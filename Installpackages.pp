# To install Apache and Tomcat package 


$package_install = $facts['os']['family']? {
    'Redhat' => 'httpd' , 
     'Debian' => 'apache2' ,         
}

package { $package_install :
    ensure => installed,
}

service { $package_install:
    ensure     => running,
    enable     => true,
}


