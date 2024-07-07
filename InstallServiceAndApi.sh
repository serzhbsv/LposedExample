chmod +x gradlew
./gradlew
cd api
echo 'org.gradle.jvmargs=-Xmx2048m' >> gradle.properties
./gradlew :api:publishApiPublicationToMavenLocal
cd ..
cd service
echo 'org.gradle.jvmargs=-Xmx2048m' >> gradle.properties
./gradlew :interface:publishInterfacePublicationToMavenLocal
cd ..
./gradlew build
