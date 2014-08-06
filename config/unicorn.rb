root = "/home/workshops/apps/angularjs-workshops-backend/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.workshops.sock"
worker_processes 2
timeout 120
preload_app true