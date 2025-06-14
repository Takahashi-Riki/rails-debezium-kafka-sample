working_directory "/usr/src/app"
pid "/usr/src/app/tmp/pids/unicorn.pid"
stderr_path "/usr/src/app/log/unicorn.stderr.log"
stdout_path "/usr/src/app/log/unicorn.stdout.log"
listen "/usr/src/app/tmp/sockets/unicorn.sock", backlog: 64
listen 3000, tcp_nopush: true
worker_processes 2
timeout 30 