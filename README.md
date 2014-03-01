chef-servers
============

should install `knife-solo`

    $ gem install knife-solo
    $ knife configure -r . --defaults
    
config your ssh `~/.ssh/config`

    Host server
      Hostname <IP/domain>
      User     <user>

Then

    $ knife solo prepare <server>
    $ knife solo cook <server>

