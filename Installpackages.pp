# To install Apache and Tomcat package 

$package_install = $facts['os']['family']? {
    'Redhat' => 'httpd' ,  'tomcat',
     'Debian' => 'apache2' , 'tomcat7' ,        
}

#Ensure package is installed 
package { $package_install :
    ensure => installed,
}

#ENsure package is running
service { $package_install:
    ensure     => running,
    enable     => true,
}


