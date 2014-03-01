chef-servers
============

should install knife-solo

    $ gem install knife-solo
    $ knife configure -r . --defaults


    $ knife solo prepare ubuntu@ip
    
    
config your file `~/.ssh/config`

    Host server
      Hostname <IP/domain>
      
    
    $ knife solo cook 
