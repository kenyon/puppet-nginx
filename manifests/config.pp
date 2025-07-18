# @summary Manage NGINX bootstrap and configuration
# @api private
class nginx::config {
  assert_private()

  $client_body_temp_path          = $nginx::client_body_temp_path
  $confd_only                     = $nginx::confd_only
  $confd_purge                    = $nginx::confd_purge
  $conf_dir                       = $nginx::conf_dir
  $daemon                         = $nginx::daemon
  $daemon_user                    = $nginx::daemon_user
  $daemon_group                   = $nginx::daemon_group
  $dynamic_modules                = $nginx::dynamic_modules
  $global_owner                   = $nginx::global_owner
  $global_group                   = $nginx::global_group
  $global_mode                    = $nginx::global_mode
  $limit_req_zone                 = $nginx::limit_req_zone
  $log_dir                        = $nginx::log_dir
  $log_user                       = $nginx::log_user
  $log_group                      = $nginx::log_group
  $log_mode                       = $nginx::log_mode
  $http_access_log                = $nginx::http_access_log
  $http_format_log                = $nginx::http_format_log
  $stream_access_log              = $nginx::stream_access_log
  $stream_custom_format_log       = $nginx::stream_custom_format_log
  $nginx_error_log                = $nginx::nginx_error_log
  $nginx_error_log_severity       = $nginx::nginx_error_log_severity
  $pid                            = $nginx::pid
  $proxy_temp_path                = $nginx::proxy_temp_path
  $root_group                     = $nginx::root_group
  $sites_available_owner          = $nginx::sites_available_owner
  $sites_available_group          = $nginx::sites_available_group
  $sites_available_mode           = $nginx::sites_available_mode
  $super_user                     = $nginx::super_user
  $temp_dir                       = $nginx::temp_dir
  $server_purge                   = $nginx::server_purge
  $absolute_redirect              = $nginx::absolute_redirect
  $accept_mutex                   = $nginx::accept_mutex
  $accept_mutex_delay             = $nginx::accept_mutex_delay
  $client_body_buffer_size        = $nginx::client_body_buffer_size
  $client_max_body_size           = $nginx::client_max_body_size
  $client_body_timeout            = $nginx::client_body_timeout
  $send_timeout                   = $nginx::send_timeout
  $lingering_timeout              = $nginx::lingering_timeout
  $lingering_close                = $nginx::lingering_close
  $lingering_time                 = $nginx::lingering_time
  $reset_timedout_connection      = $nginx::reset_timedout_connection
  $etag                           = $nginx::etag
  $events_use                     = $nginx::events_use
  $debug_connections              = $nginx::debug_connections
  $fastcgi_cache_inactive         = $nginx::fastcgi_cache_inactive
  $fastcgi_cache_key              = $nginx::fastcgi_cache_key
  $fastcgi_cache_keys_zone        = $nginx::fastcgi_cache_keys_zone
  $fastcgi_cache_levels           = $nginx::fastcgi_cache_levels
  $fastcgi_cache_max_size         = $nginx::fastcgi_cache_max_size
  $fastcgi_cache_path             = $nginx::fastcgi_cache_path
  $fastcgi_cache_use_stale        = $nginx::fastcgi_cache_use_stale
  $gzip                           = $nginx::gzip
  $gzip_buffers                   = $nginx::gzip_buffers
  $gzip_comp_level                = $nginx::gzip_comp_level
  $gzip_disable                   = $nginx::gzip_disable
  $gzip_min_length                = $nginx::gzip_min_length
  $gzip_http_version              = $nginx::gzip_http_version
  $gzip_proxied                   = $nginx::gzip_proxied
  $gzip_types                     = $nginx::gzip_types
  $gzip_vary                      = $nginx::gzip_vary
  $gzip_static                    = $nginx::gzip_static
  $http_raw_prepend               = $nginx::http_raw_prepend
  $http_raw_append                = $nginx::http_raw_append
  $http_cfg_prepend               = $nginx::http_cfg_prepend
  $http_cfg_append                = $nginx::http_cfg_append
  $http_tcp_nodelay               = $nginx::http_tcp_nodelay
  $http_tcp_nopush                = $nginx::http_tcp_nopush
  $keepalive_timeout              = $nginx::keepalive_timeout
  $keepalive_requests             = $nginx::keepalive_requests
  $log_format                     = $nginx::log_format
  $stream_log_format              = $nginx::stream_log_format
  $mail                           = $nginx::mail
  $mime_types_path                = $nginx::mime_types_path
  $stream                         = $nginx::stream
  $map_hash_bucket_size           = $nginx::map_hash_bucket_size
  $map_hash_max_size              = $nginx::map_hash_max_size
  $mime_types                     = $nginx::mime_types_preserve_defaults ? {
    true    => $nginx::params::mime_types + $nginx::mime_types,
    default => $nginx::mime_types,
  }
  $multi_accept                   = $nginx::multi_accept
  $names_hash_bucket_size         = $nginx::names_hash_bucket_size
  $names_hash_max_size            = $nginx::names_hash_max_size
  $nginx_cfg_prepend              = $nginx::nginx_cfg_prepend
  $proxy_buffers                  = $nginx::proxy_buffers
  $proxy_buffer_size              = $nginx::proxy_buffer_size
  $proxy_busy_buffers_size        = $nginx::proxy_busy_buffers_size
  $proxy_cache_inactive           = $nginx::proxy_cache_inactive
  $proxy_cache_keys_zone          = $nginx::proxy_cache_keys_zone
  $proxy_cache_levels             = $nginx::proxy_cache_levels
  $proxy_cache_max_size           = $nginx::proxy_cache_max_size
  $proxy_cache_path               = $nginx::proxy_cache_path
  $proxy_cache_loader_files       = $nginx::proxy_cache_loader_files
  $proxy_cache_loader_sleep       = $nginx::proxy_cache_loader_sleep
  $proxy_cache_loader_threshold   = $nginx::proxy_cache_loader_threshold
  $proxy_use_temp_path            = $nginx::proxy_use_temp_path
  $proxy_connect_timeout          = $nginx::proxy_connect_timeout
  $proxy_headers_hash_bucket_size = $nginx::proxy_headers_hash_bucket_size
  $proxy_http_version             = $nginx::proxy_http_version
  $proxy_max_temp_file_size       = $nginx::proxy_max_temp_file_size
  $proxy_read_timeout             = $nginx::proxy_read_timeout
  $proxy_redirect                 = $nginx::proxy_redirect
  $proxy_send_timeout             = $nginx::proxy_send_timeout
  $proxy_set_header               = $nginx::proxy_set_header
  $proxy_hide_header              = $nginx::proxy_hide_header
  $proxy_pass_header              = $nginx::proxy_pass_header
  $sendfile                       = $nginx::sendfile
  $server_tokens                  = $nginx::server_tokens
  $spdy                           = $nginx::spdy
  $http2                          = $nginx::http2
  $ssl_buffer_size                = $nginx::ssl_buffer_size
  $ssl_ciphers                    = $nginx::ssl_ciphers
  $ssl_crl                        = $nginx::ssl_crl
  $ssl_dhparam                    = $nginx::ssl_dhparam
  $ssl_ecdh_curve                 = $nginx::ssl_ecdh_curve
  $ssl_session_cache              = $nginx::ssl_session_cache
  $ssl_session_timeout            = $nginx::ssl_session_timeout
  $ssl_session_tickets            = $nginx::ssl_session_tickets
  $ssl_session_ticket_key         = $nginx::ssl_session_ticket_key
  $ssl_stapling                   = $nginx::ssl_stapling
  $ssl_stapling_file              = $nginx::ssl_stapling_file
  $ssl_stapling_responder         = $nginx::ssl_stapling_responder
  $ssl_stapling_verify            = $nginx::ssl_stapling_verify
  $ssl_trusted_certificate        = $nginx::ssl_trusted_certificate
  $ssl_password_file              = $nginx::ssl_password_file
  $ssl_prefer_server_ciphers      = $nginx::ssl_prefer_server_ciphers
  $ssl_protocols                  = $nginx::ssl_protocols
  $ssl_verify_depth               = $nginx::ssl_verify_depth
  $types_hash_bucket_size         = $nginx::types_hash_bucket_size
  $types_hash_max_size            = $nginx::types_hash_max_size
  $worker_connections             = $nginx::worker_connections
  $worker_processes               = $nginx::worker_processes
  $worker_rlimit_nofile           = $nginx::worker_rlimit_nofile
  $pcre_jit                       = $nginx::pcre_jit
  $include_modules_enabled        = $nginx::include_modules_enabled

  # Non-configurable settings
  $conf_template                  = 'nginx/conf.d/nginx.conf.erb'
  $mime_template                  = 'nginx/conf.d/mime.types.epp'
  $proxy_conf_template            = undef

  File {
    owner => $global_owner,
    group => $global_group,
    mode  => $global_mode,
  }

  file { $conf_dir:
    ensure => directory,
  }

  file { "${conf_dir}/conf.stream.d":
    ensure => directory,
  }

  file { "${conf_dir}/conf.d":
    ensure => directory,
  }

  if $confd_purge {
    # Err on the side of caution - make sure *both* $server_purge and
    # $confd_purge are set if $confd_only is set, before purging files
    # ${conf_dir}/conf.d
    if (($confd_only and $server_purge) or !$confd_only) {
      File["${conf_dir}/conf.d"] {
        purge   => true,
        recurse => true,
        notify  => Class['nginx::service'],
      }

      File["${conf_dir}/conf.stream.d"] {
        purge   => true,
        recurse => true,
        notify  => Class['nginx::service'],
      }
    }
  }

  file { "${conf_dir}/conf.mail.d":
    ensure => directory,
  }

  if $confd_purge == true {
    File["${conf_dir}/conf.mail.d"] {
      purge   => true,
      recurse => true,
    }
  }

  if $nginx::manage_snippets_dir {
    file { $nginx::snippets_dir:
      ensure => directory,
    }
  }

  if ($include_modules_enabled or $nginx::mail) {
    file { "${conf_dir}/modules-enabled":
      ensure => directory,
    }
  }

  file { $log_dir:
    ensure  => directory,
    mode    => $log_mode,
    owner   => $log_user,
    group   => $log_group,
    replace => $nginx::manage_log_dir,
  }

  if $client_body_temp_path {
    if $client_body_temp_path.is_a(String) {
      $_client_body_temp_path = [$client_body_temp_path]
    } else {
      $_client_body_temp_path = $client_body_temp_path
    }

    file { $_client_body_temp_path[0]:
      ensure => directory,
      owner  => $daemon_user,
      mode   => '0700',
    }
  }

  if $proxy_temp_path {
    if $proxy_temp_path.is_a(String) {
      $_proxy_temp_path = [$proxy_temp_path]
    }
    else {
      $_proxy_temp_path = $proxy_temp_path
    }

    file { $_proxy_temp_path[0]:
      ensure => directory,
      owner  => $daemon_user,
      mode   => '0700',
    }
  }

  if $fastcgi_cache_path {
    file { $fastcgi_cache_path:
      ensure => directory,
      owner  => $daemon_user,
      mode   => '0700',
    }
  }

  if $proxy_cache_path =~ Hash {
    file { $proxy_cache_path.keys():
      ensure => directory,
      owner  => $daemon_user,
      mode   => '0700',
    }
  } elsif $proxy_cache_path =~ String {
    file { $proxy_cache_path:
      ensure => directory,
      owner  => $daemon_user,
      mode   => '0700',
    }
  }

  unless $confd_only {
    file { "${conf_dir}/sites-available":
      ensure => directory,
      owner  => $sites_available_owner,
      group  => $sites_available_group,
      mode   => $sites_available_mode,
    }

    file { "${conf_dir}/sites-enabled":
      ensure => directory,
      owner  => $sites_available_owner,
      group  => $sites_available_group,
      mode   => $sites_available_mode,
    }

    if $server_purge {
      File["${conf_dir}/sites-available"] {
        purge   => true,
        recurse => true,
      }

      File["${conf_dir}/sites-enabled"] {
        purge   => true,
        recurse => true,
      }
    }

    # No real reason not to make these even if $stream is not enabled.
    file { "${conf_dir}/streams-enabled":
      ensure => directory,
      owner  => $sites_available_owner,
      group  => $sites_available_group,
      mode   => $sites_available_mode,
    }

    file { "${conf_dir}/streams-available":
      ensure => directory,
      owner  => $sites_available_owner,
      group  => $sites_available_group,
      mode   => $sites_available_mode,
    }

    if $server_purge {
      File["${conf_dir}/streams-enabled"] {
        purge   => true,
        recurse => true,
      }
    }
  }

  file { "${conf_dir}/nginx.conf":
    ensure  => file,
    content => template($conf_template),
    tag     => 'nginx_config_file',
  }

  file { "${conf_dir}/mime.types":
    ensure  => file,
    content => epp($mime_template),
    tag     => 'nginx_config_file',
  }

  file { "${temp_dir}/nginx.d":
    ensure  => absent,
    purge   => true,
    recurse => true,
    force   => true,
  }

  file { "${temp_dir}/nginx.mail.d":
    ensure  => absent,
    purge   => true,
    recurse => true,
    force   => true,
  }
}
