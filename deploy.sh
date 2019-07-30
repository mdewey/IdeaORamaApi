dotnet publish -c Release 

cp dockerfile ./bin/release/netcoreapp2.2/publish

docker build -t sdg-idea-o-rama-image ./bin/release/netcoreapp2.2/publish

docker tag sdg-idea-o-rama-image registry.heroku.com/sdg-idea-o-rama/web

docker push registry.heroku.com/sdg-idea-o-rama/web

heroku container:release web -a sdg-idea-o-rama

# sudo chmod 755 deploy.sh
# ./deploy.sh