class puppet::cron {

  better_cron{ 'puppet':
    cron_minute => fqdn_rand(60),
    path        => '/usr/local/sbin/update_puppet.sh > /var/log/puppet/lastrun || cat /var/log/puppet/lastrun;cat /var/log/puppet/lastrun >> /var/log/puppet/puppet.log',
  }

}
