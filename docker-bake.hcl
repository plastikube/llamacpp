// docker-bake.hcl
target "docker-metadata-action" {}

target "server" {
  inherits = ["docker-metadata-action"]
  context = "./src/"
  platforms = [
    "linux/amd64"
  ]
  target = "server"
}
