def DOCKER_REGISTRY = "registry.hub.docker.com"
def TAG = "base"
def DOCKER_IMAGE = "choisunguk/jmeter:${TAG}"
def DOCKERFILE = "baseDockerfile"

pipeline {
   agent any
   stages {
      stage('build docker image') {
         steps {
            script{
              image = docker.build("""${DOCKER_IMAGE}""")
            }
         }
      }
      stage('push docker image') {
         steps {
            script{
              docker.withRegistry("""https://registry.hub.docker.com""", 'publicdocker') {
                  image.push()
              }
            }
         }
      }       
   }
}