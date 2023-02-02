function show_search_result(data, area, fst_col, sec_col, thd_col, path) {
    var count = 1;
    var html = "</br><h3>"+data.title+"</h3>";
    html += "<table class='table table-hover space'>\n<thead>\n<tr class='row'>\n<th class='col-2'>#</th>\n<th class='col-7'>Name</th>\n<th class='col-3'>" + thd_col + "</th>\n</tr>\n</thead>\n<tbody>\n";
    data.result.forEach( (row) => {
        html += "<tr class='row'>\n<td class='col-2'>" + count + "</td>\n<td class='col-7''><a href='" + path + row.id + "'> " + row.name +"</a></td>\n<td class='col-3'>" + row.info + "</td>\n</tr>";
        count++;
    })
    area.innerHTML = html + "</tbody>\n</table>";
    return;
}
    
function change_search_mode(cur_form, cur_btn, hide_f1, disable_b1, hide_f2, disable_b2, hide_f3, disable_b3, hide_f4, disable_b4) {
     cur_btn.classList.add('active');
     cur_form.style.visibility = 'visible';
     
     disable_b1.classList.remove('active');
     hide_f1.style.visibility = 'hidden';
     
     disable_b2.classList.remove('active');
     hide_f2.style.visibility = 'hidden';
     
     disable_b3.classList.remove('active');
     hide_f3.style.visibility = 'hidden';
     
     disable_b4.classList.remove('active');
     hide_f4.style.visibility = 'hidden';
     return;
}

document.addEventListener('DOMContentLoaded', function () {
    const main_page = document.querySelector('#main_page');
    const search_result_area = document.querySelector('#search_result');
    const search_block = document.querySelector('#search_block');
    
    const composition_search_form = document.querySelector('#composition_search_form');
    const album_search_form = document.querySelector('#album_search_form');
    const artist_search_form = document.querySelector('#artist_search_form');
    const music_storage_search_form = document.querySelector('#music_storage_search_form');
    const music_storage_search_form_country = document.querySelector('#music_storage_search_form_country');
    
    const composition_sf_block = document.querySelector('#composition_sf_block');
    const album_sf_block = document.querySelector('#album_sf_block');
    const artist_sf_block = document.querySelector('#artist_sf_block');
    const music_storage_sf_block = document.querySelector('#music_storage_sf_block');
    const music_storage_sf_country_block = document.querySelector('#music_storage_sf_country_block');
    
    const search_btn = document.querySelector('#search_btn');
    const composition_search_btn = document.querySelector('#composition_search_btn')
    const album_search_btn = document.querySelector('#album_search_btn')
    const artist_search_btn = document.querySelector('#artist_search_btn')
    const mus_stor_search_btn = document.querySelector('#mus_stor_search_btn')
    const mus_stor_search_country_btn = document.querySelector('#mus_stor_search_country_btn')
    if (composition_sf_block) {
    composition_search_form.addEventListener('ajax:success', function(evt) {
        [data, status, xhr] = evt.detail;
            console.log(data)
            alert("success");
            if (data.result.length!=0) 
            show_search_result(data, search_result_area, "#", "Name", "Duration", "/info_composition_view?composition_id=");
            else 
            search_result_area.innerHTML="<br><h1>Sorry... But nothing found by your request!</h1>";
    });
    album_search_form.addEventListener('ajax:success', function(evt) {
        [data, status, xhr] = evt.detail;
            console.log(data)
            alert("success");
            if (data.result.length!=0)
            show_search_result(data, search_result_area, "#", "Name", "Duration", "/info_album_view?album_id=");
            else 
            search_result_area.innerHTML="<br><h1>Sorry... But nothing found by your request!</h1>";
    });
    artist_search_form.addEventListener('ajax:success', function(evt) {
        [data, status, xhr] = evt.detail;
            console.log(data)
            alert("success");
            if (data.result.length!=0)
            show_search_result(data, search_result_area, "#", "Name", "Type 1-band\n0-single", "/info_artist_view?artist_id=");
            else 
            search_result_area.innerHTML="<br><h1>Sorry... But nothing found by your request!</h1>";
    });
    music_storage_search_form.addEventListener('ajax:success', function(evt) {
        [data, status, xhr] = evt.detail;
            console.log(data)
            alert("success");
            if (data.result.length!=0)
            show_search_result(data, search_result_area, "#", "Name", "Duration", "/info_storage_view?music_storage_id=");
            else 
            search_result_area.innerHTML="<br><h1>Sorry... But nothing found by your request!</h1>";
    });
    music_storage_search_form_country.addEventListener('ajax:success', function(evt) {
        [data, status, xhr] = evt.detail;
            console.log(data)
            alert("success");
            if (data.result.length!=0)
            show_search_result(data, search_result_area, "#", "Name", "Duration", "/info_storage_view?music_storage_id=");
            else 
            search_result_area.innerHTML="<br><h1>Sorry... But nothing found by your request!</h1>";
    });
    composition_search_btn.addEventListener('click', function() {
          change_search_mode(composition_sf_block, composition_search_btn, album_sf_block, album_search_btn, artist_sf_block, artist_search_btn, music_storage_sf_block, mus_stor_search_btn, music_storage_sf_country_block, mus_stor_search_country_btn);
      
      });
    album_search_btn.addEventListener('click', function() {
          change_search_mode(album_sf_block, album_search_btn, composition_sf_block, composition_search_btn, artist_sf_block, artist_search_btn, music_storage_sf_block, mus_stor_search_btn, music_storage_sf_country_block, mus_stor_search_country_btn);
      
      });
    artist_search_btn.addEventListener('click', function() {
           change_search_mode(artist_sf_block, artist_search_btn, album_sf_block, album_search_btn, composition_sf_block, composition_search_btn, music_storage_sf_block, mus_stor_search_btn, music_storage_sf_country_block, mus_stor_search_country_btn);
       
       });
    mus_stor_search_btn.addEventListener('click', function() {
          change_search_mode(music_storage_sf_block, mus_stor_search_btn, album_sf_block, album_search_btn, artist_sf_block, artist_search_btn, composition_sf_block, composition_search_btn, music_storage_sf_country_block, mus_stor_search_country_btn);
      
      });
    
    mus_stor_search_country_btn.addEventListener('click', function() {
          change_search_mode(music_storage_sf_country_block, mus_stor_search_country_btn, album_sf_block, album_search_btn, artist_sf_block, artist_search_btn, composition_sf_block, composition_search_btn, music_storage_sf_block, mus_stor_search_btn);
      
      });
    search_btn.addEventListener('click', function() {
            jQuery('html,body').animate({scrollTop:(main_page).offsetTop},1000);
        });
    }
});

