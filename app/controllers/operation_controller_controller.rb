# frozen_string_literal: true

class OperationControllerController < ApplicationController
   
    
    def info_composition_view
        composition_id=params[:composition_id].to_i
        @composition = Composition.find_by_id(composition_id)
        p 3
    end
      
    def info_album_view
        album_id=params[:album_id].to_i
        @album = Album.find_by_id(album_id)
        p 3
    end  
      
    def info_storage_view
        music_storage_id=params[:music_storage_id].to_i
        @music_storage = MusicStorage.find_by_id(music_storage_id)
        p 3
    end
    
    def info_artist_view
        artist_id=params[:artist_id].to_i
        @artist = Artist.find_by_id(artist_id)
        p 3
    end
    
    def info_person_view
        person_id=params[:person_id].to_i
        @person = Person.find_by_id(person_id)
        p 3
    end
    
    def info_label_view
        label_id=params[:label_id].to_i
        @label = Label.find_by_id(label_id)
        p 3
    end
    
    def composition_lists_report
#        @composition_lists = CompositionList.joins(:person, :artist, composition: :genre, album: [ :album_type, :label]).select("compositions.name as 'composition_name', compositions.duration, compositions.release_date, albums.name as 'album_name', artists.name as 'artist_name', people.first_name, people.last_name, composition_lists.position_number, composition_lists.id, album_types.name as 'album_type', genres.name as 'genre', labels.name as 'label'")
        @composition_lists = CompositionList.find_by_sql"SELECT compositions.name as 'composition_name', compositions.duration, compositions.release_date, albums.name as 'album_name', artists.name as 'artist_name', people.first_name, people.last_name, composition_lists.position_number, composition_lists.id, album_types.name as 'album_type', genres.name as 'genre', labels.name as 'label' FROM 'composition_lists' INNER JOIN 'people' ON 'people'.'id' = 'composition_lists'.'person_id' INNER JOIN 'artists' ON 'artists'.'id' = 'composition_lists'.'artist_id' INNER JOIN 'compositions' ON 'compositions'.'id' = 'composition_lists'.'composition_id' INNER JOIN 'genres' ON 'genres'.'id' = 'compositions'.'genre_id' INNER JOIN 'albums' ON 'albums'.'id' = 'composition_lists'.'album_id' INNER JOIN 'album_types' ON 'album_types'.'id' = 'albums'.'album_type_id' INNER JOIN 'labels' ON 'labels'.'id' = 'albums'.'label_id'"
    end
      
    def storage_lists_report
#        @storage_lists = StorageList.joins(music_storage: [:storage_type, :company], album: [ :album_type, :label]).select("albums.name as 'album_name', album_types.name as 'album_type', labels.name as 'label_name', music_storages.name as 'storage_name', storage_types.name as 'storage_type', companies.name as 'company_name', music_storages.rack, music_storages.shelf, music_storages.section, music_storages.cell, storage_lists.id, storage_lists.production_year")
        @storage_lists = StorageList.find_by_sql"SELECT albums.name as 'album_name', album_types.name as 'album_type', labels.name as 'label_name', music_storages.name as 'storage_name', storage_types.name as 'storage_type', companies.name as 'company_name', music_storages.rack, music_storages.shelf, music_storages.section, music_storages.cell, storage_lists.id, storage_lists.production_year FROM 'storage_lists' INNER JOIN 'music_storages' ON 'music_storages'.'id' = 'storage_lists'.'music_storage_id' INNER JOIN 'storage_types' ON 'storage_types'.'id' = 'music_storages'.'storage_type_id' INNER JOIN 'companies' ON 'companies'.'id' = 'music_storages'.'company_id' INNER JOIN 'albums' ON 'albums'.'id' = 'storage_lists'.'album_id' INNER JOIN 'album_types' ON 'album_types'.'id' = 'albums'.'album_type_id' INNER JOIN 'labels' ON 'labels'.'id' = 'albums'.'label_id'"
    end
    
    def artist_lists_report
#        @artist_lists = ArtistList.joins(:artist, person: :country).select("artists.name as 'artist_name', artists.type_band, artist_lists.debut_year, artist_lists.end_year, people.first_name, people.last_name, people.birth_date, people.death_date, countries.name as 'country_name', artist_lists.id")
        @artist_lists = ArtistList.find_by_sql"SELECT artists.name as 'artist_name', artists.type_band, artist_lists.debut_year, artist_lists.end_year, people.first_name, people.last_name, people.birth_date, people.death_date, countries.name as 'country_name', artist_lists.id FROM 'artist_lists' INNER JOIN 'artists' ON 'artists'.'id' = 'artist_lists'.'artist_id' INNER JOIN 'people' ON 'people'.'id' = 'artist_lists'.'person_id' INNER JOIN 'countries' ON 'countries'.'id' = 'people'.'country_id'"
    end
    
    def composition_search
p       request_name = params[:request_name]
p       date_from = params[:date_from]
p       date_to = params[:date_to]
        artist = params[:composition_artist_id]
        genre = params[:composition_genre_id]
        title = "Result of search among COMPOSITIONS with NAME request:\n" + request_name
        #compositions = CompositionList.joins(:composition, :artist).where( "compositions.name LIKE ? AND compositions.genre_id = ? AND artists.id = ? AND compositions.release_date >= ? AND compositions.release_date <= ? ", "%#{request_name}%", genre, artist, date_from, date_to ).group('compositions.id').select("compositions.name, compositions.duration as 'info', compositions.id")    
        compositions = CompositionList.find_by_sql "SELECT compositions.name, compositions.duration as 'info', compositions.id FROM 'composition_lists' INNER JOIN 'compositions' ON 'compositions'.'id' = 'composition_lists'.'composition_id' INNER JOIN 'artists' ON 'artists'.'id' = 'composition_lists'.'artist_id' WHERE (compositions.name LIKE '%"+request_name+"%' AND compositions.genre_id = '"+genre+"' AND artists.id = '"+artist+"' AND compositions.release_date >= '"+date_from+"' AND compositions.release_date <= '"+date_to+"' ) GROUP BY compositions.id"
        respond_to do |format|
            format.html
            format.json { render json: { result: compositions, title: title,  message: 'Nothing found by your request!' } }
        end
    end

    def artist_search
        request_name = params[:request_name]
        date_from = params[:date_from]
        date_to = params[:date_to]
        type = params[:artist_type]
        title = "Result of search among ARTISTS with NAME request:\n" + request_name
  #     artists = ArtistList.joins(:artist).where( "artists.name LIKE ?  AND artists.type_band = ? AND artist_lists.debut_year >= ? AND artist_lists.debut_year <= ?", "%#{request_name}%", type, date_from, date_to).group('artists.id').select("artists.name, artists.type_band as 'info', artists.id")
        artists = ArtistList.find_by_sql"SELECT artists.name, artists.type_band as 'info', artists.id FROM 'artist_lists' INNER JOIN 'artists' ON 'artists'.'id' = 'artist_lists'.'artist_id' WHERE (artists.name LIKE '%"+request_name+"%'  AND artists.type_band = '"+type+"' AND artist_lists.debut_year >= '"+date_from+"' AND artist_lists.debut_year <= '"+date_to+"') GROUP BY artists.id"
        respond_to do |format|
            format.html
            format.json { render json: { result: artists, title: title,  message: 'Nothing found by your request!' } }
        end
    end
    
    def album_search
        request_name = params[:request_name]
        date_from = params[:date_from]
        date_to = params[:date_to]
        artist = params[:album_artist_id]
        label = params[:album_label_id]
        title = "Result of search among ALBUMS with NAME request:\n" + request_name
p    #   albums = CompositionList.joins(:artist, :album).where( "albums.name LIKE ? AND  artists.id = ? AND albums.label_id = ? AND albums.release_date >= ? AND albums.release_date <=? ", "%#{request_name}%", artist, label, date_from, date_to ).group('albums.id').select("albums.name, albums.release_date as 'info', albums.id")
        albums= CompositionList.find_by_sql"SELECT albums.name, albums.release_date as 'info', albums.id FROM 'composition_lists' INNER JOIN 'artists' ON 'artists'.'id' = 'composition_lists'.'artist_id' INNER JOIN 'albums' ON 'albums'.'id' = 'composition_lists'.'album_id' WHERE (albums.name LIKE '%"+request_name+"%' AND  artists.id = '"+artist+"' AND albums.label_id = '"+label+"' AND albums.release_date >= '"+date_from+"' AND albums.release_date <='"+date_to+"' ) GROUP BY albums.id"
        respond_to do |format|
            format.html
            format.json { render json: { result: albums, title: title,  message: 'Nothing found by your request!' } }
        end
    end

    def music_storage_search
        request_name = params[:request_name]
        album = params[:music_storage_album_id]
        company = params[:music_storage_company_id]
        type = params[:music_storage_type_id]
        title = "Result of search among MUSIC STORAGES with NAME request:\n" + request_name
       # music_storages = StorageList.joins(:album, :music_storage).where( "music_storages.name LIKE ? AND albums.id = ? AND music_storages.storage_type_id = ? AND music_storages.company_id = ?", "%#{request_name}%", album, type, company).group('music_storages.id').select('music_storages.name, music_storages.id, music_storages.storage_type_id');
        music_storages = StorageList.find_by_sql"SELECT music_storages.name, music_storages.id, music_storages.storage_type_id FROM 'storage_lists' INNER JOIN 'albums' ON 'albums'.'id' = 'storage_lists'.'album_id' INNER JOIN 'music_storages' ON 'music_storages'.'id' = 'storage_lists'.'music_storage_id' WHERE (music_storages.name LIKE '%"+request_name+"%' AND albums.id = '"+album+"' AND music_storages.storage_type_id = '"+type+"' AND music_storages.company_id = '"+company+"') GROUP BY music_storages.id"
         respond_to do |format|
            format.html
            format.json { render json: { result: music_storages, title: title,  message: 'Nothing found by your request!' } }
        end
    end
    
   def music_storage_search_country
        company = params[:ms_company_country_id]
        label = params[:ms_label_country_id]
        date_from = params[:date_from]
        date_to = params[:date_to]
        title = "Result of search among MUSIC STORAGES with COUNTRIES request:\n"
#         music_storages = StorageList.joins(album: :label, music_storage: :company).where( "companies.country_id = ? AND labels.country_id = ? AND storage_lists.production_year >= ? AND storage_lists.production_year <= ?", company, label, date_from, date_to  ).group('music_storages.id').select('music_storages.name, music_storages.id, music_storages.storage_type_id');
         music_storages = StorageList.find_by_sql"SELECT music_storages.name, music_storages.id, music_storages.storage_type_id FROM 'storage_lists' INNER JOIN 'albums' ON 'albums'.'id' = 'storage_lists'.'album_id' INNER JOIN 'labels' ON 'labels'.'id' = 'albums'.'label_id' INNER JOIN 'music_storages' ON 'music_storages'.'id' = 'storage_lists'.'music_storage_id' INNER JOIN 'companies' ON 'companies'.'id' = 'music_storages'.'company_id' WHERE (companies.country_id = '"+company+"' AND labels.country_id = '"+label+"' AND storage_lists.production_year >= '"+date_from+"' AND storage_lists.production_year <= '"+date_to+"') GROUP BY music_storages.id"
        
         respond_to do |format|
            format.html
            format.json { render json: { result: music_storages, title: title,  message: 'Nothing found by your request!' } }
        end
    end

end
