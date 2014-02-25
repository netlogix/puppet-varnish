#backend.pp
define varnish::backend ( $host,
                          $port,
                          $probe = undef,
                        ) {

  concat::fragment { "$title-backend":
    target => "${varnish::vcl::includedir}/backends.vcl",
    content => template('varnish/includes/backends.vcl.erb'),
    order => '02',
  }

}
