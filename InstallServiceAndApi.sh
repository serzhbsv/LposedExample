git clone --depth 1 https://github.com/libxposed/api.git libxposed/api
git clone --depth 1 https://github.com/libxposed/service.git libxposed/service

cd libxposed/api
./gradlew :api:publishApiPublicationToMavenLocal
cd ../service
./gradlew :interface:publishInterfacePublicationToMavenLocal
