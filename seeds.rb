# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
####################################################################
user = User.new
user.email = 'user@musicalcollection.ru'
user.password = 'user_mc'
user.password_confirmation = 'user_mc'
user.save
user = User.new
user.email = 'admin@musicalcollection.ru'
user.password = 'admin_mc'
user.password_confirmation = 'admin_mc'
user.admin = true
user.save
####################################################################
StorageType.create(name: 'Transcription disc 41 cm')
StorageType.create(name: 'LP (Long Play) 30 cm')
StorageType.create(name: 'Maxi Single, 12-inch single 30 cm')
StorageType.create(name: 'Single 30 cm')
StorageType.create(name: 'LP (Long Play) 25 cm')
StorageType.create(name: 'EP (Extended Play) 25 cm')
StorageType.create(name: 'Single 25 cm')
StorageType.create(name: 'EP (Extended Play) 18 cm')
StorageType.create(name: 'Single 18 cm')

StorageType.create(name: 'Reel magnetic tape')
StorageType.create(name: '8-track tape')
StorageType.create(name: 'Cassette tape')
StorageType.create(name: 'Microcassette')
StorageType.create(name: 'Elcaset')
StorageType.create(name: 'RCA tape cartridge')

StorageType.create(name: 'Compact disc')
StorageType.create(name: 'DVD')
StorageType.create(name: 'Blu-ray Disc‎')
####################################################################
Country.create(:name=>"Andorra")
Country.create(:name=>"United Arab Emirates")
Country.create(:name=>"Afghanistan")
Country.create(:name=>"Antigua and Barbuda")
Country.create(:name=>"Anguilla")
Country.create(:name=>"Albania")
Country.create(:name=>"Armenia")
Country.create(:name=>"Angola")
Country.create(:name=>"Antarctica")
Country.create(:name=>"Argentina")
Country.create(:name=>"American Samoa")
Country.create(:name=>"Austria")
Country.create(:name=>"Australia")
Country.create(:name=>"Aruba")
Country.create(:name=>"Aland Islands")
Country.create(:name=>"Azerbaijan")
Country.create(:name=>"Bosnia and Herzegovina")
Country.create(:name=>"Barbados")
Country.create(:name=>"Bangladesh")
Country.create(:name=>"Belgium")
Country.create(:name=>"Burkina Faso")
Country.create(:name=>"Bulgaria")
Country.create(:name=>"Bahrain")
Country.create(:name=>"Burundi")
Country.create(:name=>"Benin")
Country.create(:name=>"Saint Barthelemy")
Country.create(:name=>"Bermuda")
Country.create(:name=>"Brunei")
Country.create(:name=>"Bolivia")
Country.create(:name=>"Bonaire, Saint Eustatius and Saba ")
Country.create(:name=>"Brazil")
Country.create(:name=>"Bahamas")
Country.create(:name=>"Bhutan")
Country.create(:name=>"Bouvet Island")
Country.create(:name=>"Botswana")
Country.create(:name=>"Belarus")
Country.create(:name=>"Belize")
Country.create(:name=>"Canada")
Country.create(:name=>"Cocos Islands")
Country.create(:name=>"Democratic Republic of the Congo")
Country.create(:name=>"Central African Republic")
Country.create(:name=>"Republic of the Congo")
Country.create(:name=>"Switzerland")
Country.create(:name=>"Ivory Coast")
Country.create(:name=>"Cook Islands")
Country.create(:name=>"Chile")
Country.create(:name=>"Cameroon")
Country.create(:name=>"China")
Country.create(:name=>"Colombia")
Country.create(:name=>"Costa Rica")
Country.create(:name=>"Cuba")
Country.create(:name=>"Cape Verde")
Country.create(:name=>"Curacao")
Country.create(:name=>"Christmas Island")
Country.create(:name=>"Cyprus")
Country.create(:name=>"Czech Republic")
Country.create(:name=>"Germany")
Country.create(:name=>"Djibouti")
Country.create(:name=>"Denmark")
Country.create(:name=>"Dominica")
Country.create(:name=>"Dominican Republic")
Country.create(:name=>"Algeria")
Country.create(:name=>"Ecuador")
Country.create(:name=>"Estonia")
Country.create(:name=>"Egypt")
Country.create(:name=>"Western Sahara")
Country.create(:name=>"Eritrea")
Country.create(:name=>"Spain")
Country.create(:name=>"Ethiopia")
Country.create(:name=>"Finland")
Country.create(:name=>"Fiji")
Country.create(:name=>"Falkland Islands")
Country.create(:name=>"Micronesia")
Country.create(:name=>"Faroe Islands")
Country.create(:name=>"France")
Country.create(:name=>"Gabon")
Country.create(:name=>"United Kingdom")
Country.create(:name=>"Grenada")
Country.create(:name=>"Georgia")
Country.create(:name=>"French Guiana")
Country.create(:name=>"Guernsey")
Country.create(:name=>"Ghana")
Country.create(:name=>"Gibraltar")
Country.create(:name=>"Greenland")
Country.create(:name=>"Gambia")
Country.create(:name=>"Guinea")
Country.create(:name=>"Guadeloupe")
Country.create(:name=>"Equatorial Guinea")
Country.create(:name=>"Greece")
Country.create(:name=>"South Georgia and the South Sandwich Islands")
Country.create(:name=>"Guatemala")
Country.create(:name=>"Guam")
Country.create(:name=>"Guinea-Bissau")
Country.create(:name=>"Guyana")
Country.create(:name=>"Hong Kong")
Country.create(:name=>"Heard Island and McDonald Islands")
Country.create(:name=>"Honduras")
Country.create(:name=>"Croatia")
Country.create(:name=>"Haiti")
Country.create(:name=>"Hungary")
Country.create(:name=>"Indonesia")
Country.create(:name=>"Ireland")
Country.create(:name=>"Israel")
Country.create(:name=>"Isle of Man")
Country.create(:name=>"India")
Country.create(:name=>"British Indian Ocean Territory")
Country.create(:name=>"Iraq")
Country.create(:name=>"Iran")
Country.create(:name=>"Iceland")
Country.create(:name=>"Italy")
Country.create(:name=>"Jersey")
Country.create(:name=>"Jamaica")
Country.create(:name=>"Jordan")
Country.create(:name=>"Japan")
Country.create(:name=>"Kenya")
Country.create(:name=>"Kyrgyzstan")
Country.create(:name=>"Cambodia")
Country.create(:name=>"Kiribati")
Country.create(:name=>"Comoros")
Country.create(:name=>"Saint Kitts and Nevis")
Country.create(:name=>"North Korea")
Country.create(:name=>"South Korea")
Country.create(:name=>"Kosovo")
Country.create(:name=>"Kuwait")
Country.create(:name=>"Cayman Islands")
Country.create(:name=>"Kazakhstan")
Country.create(:name=>"Laos")
Country.create(:name=>"Lebanon")
Country.create(:name=>"Saint Lucia")
Country.create(:name=>"Liechtenstein")
Country.create(:name=>"Sri Lanka")
Country.create(:name=>"Liberia")
Country.create(:name=>"Lesotho")
Country.create(:name=>"Lithuania")
Country.create(:name=>"Luxembourg")
Country.create(:name=>"Latvia")
Country.create(:name=>"Libya")
Country.create(:name=>"Morocco")
Country.create(:name=>"Monaco")
Country.create(:name=>"Moldova")
Country.create(:name=>"Montenegro")
Country.create(:name=>"Saint Martin")
Country.create(:name=>"Madagascar")
Country.create(:name=>"Marshall Islands")
Country.create(:name=>"Macedonia")
Country.create(:name=>"Mali")
Country.create(:name=>"Myanmar")
Country.create(:name=>"Mongolia")
Country.create(:name=>"Macao")
Country.create(:name=>"Northern Mariana Islands")
Country.create(:name=>"Martinique")
Country.create(:name=>"Mauritania")
Country.create(:name=>"Montserrat")
Country.create(:name=>"Malta")
Country.create(:name=>"Mauritius")
Country.create(:name=>"Maldives")
Country.create(:name=>"Malawi")
Country.create(:name=>"Mexico")
Country.create(:name=>"Malaysia")
Country.create(:name=>"Mozambique")
Country.create(:name=>"Namibia")
Country.create(:name=>"New Caledonia")
Country.create(:name=>"Niger")
Country.create(:name=>"Norfolk Island")
Country.create(:name=>"Nigeria")
Country.create(:name=>"Nicaragua")
Country.create(:name=>"Netherlands")
Country.create(:name=>"Norway")
Country.create(:name=>"Nepal")
Country.create(:name=>"Nauru")
Country.create(:name=>"Niue")
Country.create(:name=>"New Zealand")
Country.create(:name=>"Oman")
Country.create(:name=>"Panama")
Country.create(:name=>"Peru")
Country.create(:name=>"French Polynesia")
Country.create(:name=>"Papua New Guinea")
Country.create(:name=>"Philippines")
Country.create(:name=>"Pakistan")
Country.create(:name=>"Poland")
Country.create(:name=>"Saint Pierre and Miquelon")
Country.create(:name=>"Pitcairn")
Country.create(:name=>"Puerto Rico")
Country.create(:name=>"Palestinian Territory")
Country.create(:name=>"Portugal")
Country.create(:name=>"Palau")
Country.create(:name=>"Paraguay")
Country.create(:name=>"Qatar")
Country.create(:name=>"Reunion")
Country.create(:name=>"Romania")
Country.create(:name=>"Serbia")
Country.create(:name=>"Russia")
Country.create(:name=>"Rwanda")
Country.create(:name=>"Saudi Arabia")
Country.create(:name=>"Solomon Islands")
Country.create(:name=>"Seychelles")
Country.create(:name=>"Sudan")
Country.create(:name=>"Sweden")
Country.create(:name=>"Singapore")
Country.create(:name=>"Saint Helena")
Country.create(:name=>"Slovenia")
Country.create(:name=>"Svalbard and Jan Mayen")
Country.create(:name=>"Slovakia")
Country.create(:name=>"Sierra Leone")
Country.create(:name=>"San Marino")
Country.create(:name=>"Senegal")
Country.create(:name=>"Somalia")
Country.create(:name=>"Suriname")
Country.create(:name=>"Sao Tome and Principe")
Country.create(:name=>"El Salvador")
Country.create(:name=>"Sint Maarten")
Country.create(:name=>"Syria")
Country.create(:name=>"Swaziland")
Country.create(:name=>"Turks and Caicos Islands")
Country.create(:name=>"Chad")
Country.create(:name=>"French Southern Territories")
Country.create(:name=>"Togo")
Country.create(:name=>"Thailand")
Country.create(:name=>"Tajikistan")
Country.create(:name=>"Tokelau")
Country.create(:name=>"East Timor")
Country.create(:name=>"Turkmenistan")
Country.create(:name=>"Tunisia")
Country.create(:name=>"Tonga")
Country.create(:name=>"Turkey")
Country.create(:name=>"Trinidad and Tobago")
Country.create(:name=>"Tuvalu")
Country.create(:name=>"Taiwan")
Country.create(:name=>"Tanzania")
Country.create(:name=>"Ukraine")
Country.create(:name=>"Uganda")
Country.create(:name=>"United States Minor Outlying Islands")
Country.create(:name=>"United States")
Country.create(:name=>"Uruguay")
Country.create(:name=>"Uzbekistan")
Country.create(:name=>"Vatican")
Country.create(:name=>"Saint Vincent and the Grenadines")
Country.create(:name=>"Venezuela")
Country.create(:name=>"British Virgin Islands")
Country.create(:name=>"U.S. Virgin Islands")
Country.create(:name=>"Vietnam")
Country.create(:name=>"Vanuatu")
Country.create(:name=>"Wallis and Futuna")
Country.create(:name=>"Samoa")
Country.create(:name=>"Yemen")
Country.create(:name=>"Mayotte")
Country.create(:name=>"South Africa")
Country.create(:name=>"Zambia")
Country.create(:name=>"Zimbabwe")
Country.create(:name=>"Serbia and Montenegro")
Country.create(:name=>"Netherlands Antilles")
####################################################################
Company.create( country_id: 1, name: 'Мелодия',foundation_date: '11/05/1964', releaes_end_year: '10/10/2010')
Company.create( country_id: 2, name: 'Нота',foundation_date: '11/05/1964', releaes_end_year: '10/10/2010')
Company.create( country_id: 3, name: 'Sakura Records',foundation_date: '11/05/1964', releaes_end_year: '10/10/2010')
Company.create( country_id: 4, name: 'Sound Production',foundation_date: '11/05/1964', releaes_end_year: '10/10/2010')
Company.create( country_id: 5, name: 'Soulrecords',foundation_date: '11/05/1964', releaes_end_year: '10/10/2010')
Company.create( country_id: 6, name: 'SweetMusic Studio',foundation_date: '11/05/1964', releaes_end_year: '10/10/2010')
Company.create( country_id: 7, name: 'Friday Records',foundation_date: '11/05/1964', releaes_end_year: '10/10/2010')
Company.create( country_id: 8, name: 'Quartamusic',foundation_date: '11/05/1964', releaes_end_year: '10/10/2010')
Company.create( country_id: 9, name: 'Axioma Studio',foundation_date: '11/05/1964', releaes_end_year: '10/10/2010')
Company.create( country_id: 10, name: 'Pro-sound Music',foundation_date: '11/05/1964', releaes_end_year: '10/10/2010')
####################################################################
Genre.create(name: 'Electronic Dance Music')
Genre.create(name: 'Rock Music')
Genre.create(name: 'Jazz')
Genre.create(name: 'Dubstep')
Genre.create(name: 'Rhythm and Blues')
Genre.create(name: 'Techno')
Genre.create(name: 'Country Music')
Genre.create(name: 'Electro')
Genre.create(name: 'Indie Rock')
Genre.create(name: 'Pop Music')
####################################################################
AlbumType.create(name: 'EP')
AlbumType.create(name: 'Single')
AlbumType.create(name: 'Deluxe Edition')
AlbumType.create(name: 'Original Motion Picture Soundtrack')
AlbumType.create(name: 'Remix')
AlbumType.create(name: 'Compilation')
AlbumType.create(name: 'Edited Version')
AlbumType.create(name: 'Extended Version')
AlbumType.create(name: 'Mixtape')
AlbumType.create(name: 'Radio Edit')
####################################################################
Label.create(country_id: 48,name: 'Big Hit',foundation_date: '2019-05-11' )
Label.create(country_id: 2,name: 'Universal Music Group',foundation_date: '1930-05-11' )
Label.create(country_id: 49,name: 'Sony Music Entertainment',foundation_date: '1958-05-11' )
Label.create(country_id: 2,name: 'Warner Music Group',foundation_date: '1960-05-11' )
Label.create(country_id: 3,name: '4AD',foundation_date: '1979-05-11' )
Label.create(country_id: 3,name: 'Domino',foundation_date: '1993-05-11' )
Label.create(country_id: 2,name: 'Entertainment One',foundation_date: '2005-05-11' )
Label.create(country_id: 2,name: 'Epitaph',foundation_date: '1980-05-11' )
Label.create(country_id: 2,name: 'Atlantic Records',foundation_date: '1947-05-11' )
Label.create(country_id: 2,name: 'Island Records',foundation_date: '1959-05-11' )
####################################################################
