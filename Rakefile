
task :default => :build

task :build do
  sh('docker build -t mysql ./')
end

task :run do
  sh('docker rm mysql; exit 0')
  sh('docker run -d -name mysql -t -i mysql')
end

task :attach do
  sh('docker attach space_phab')
end

task :interactive do
  sh('docker rm mysql; exit 0')
  sh('docker run -name mysql -t -i -v /var/docker/mysql0/var:/var mysql')
end

task :shell do
  sh('docker rm mysql; exit 0')
  sh('docker run -name mysql -t -i mysql /bin/bash')
end

task :kill do
  sh('docker ps -q | xargs docker kill')
end

task :stop do
  sh('docker ps -q | xargs docker stop')
end

