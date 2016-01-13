# Root directory of Rails app
@app_path = '~/macauth/macauth-api'

worker_processes 2
working_directory "#{@app_path}/"

# This loads the application in the master process before forking
# worker processes
# Read more about it here:
# http://unicorn.bogomips.org/Unicorn/Configurator.html
preload_app true
timeout 30

# This is where we specify the socket.
# We will point the upstream Nginx module to this socket later on
# listen "/tmp/unicorn.sock", :backlog => 64 # nginx側の設定と合わせる必要がある
listen 3000

pid "/tmp/unicorn.pid"

# Set the path of the log files inside the log folder of the testapp
stderr_path File.expand_path('log/unicorn.log', "#{@app_path}")
stdout_path File.expand_path('log/unicorn.log', "#{@app_path}")

before_fork do |server, worker|
  defined?(ActiveRecord::Base) and ActiveRecord::Base.connection.disconnect!

  old_pid = "#{server.config[:pid]}.oldbin"
    if old_pid != server.pid
      begin
        sig = (worker.nr + 1) >= server.worker_processes ? :QUIT : :TTOU
        Process.kill(sig, File.read(old_pid).to_i)
      rescue Errno::ENOENT, Errno::ESRCH
      end
    end

    sleep 1
  end

after_fork do |server, worker|
  defined?(ActiveRecord::Base) and ActiveRecord::Base.establish_connection
end
