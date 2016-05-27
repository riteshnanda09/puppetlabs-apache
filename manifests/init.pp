class apache (
$somename = 'ritesh',	
){


	package { 'apache2': 
	ensure => present,
	}
       
       notify {"value of somename is $somename":}
       file { '/var/www/html/index.html':
	ensure => file,
	content => template('apache/index.html.erb'),	
}

}
