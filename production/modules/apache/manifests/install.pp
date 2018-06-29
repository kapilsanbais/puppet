class apache::install {


if $::osfamily == "RedHat" {

	package {"apache2":
		ensure => present,
	}
}
elsif $::osfamily == "Ubuntu" {
 package {"apache2":
                ensure => present,
        }
}
else {
notify { "operating system not supported": }
}

}
