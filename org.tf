provider "github" {
}

resource "github_team" "some_team" {
  name        = "some-team"
  description = "Some cool team"
  privacy     = "closed"
}

resource "github_team_membership" "some_team_membership" {
  team_id  = "${github_team.some_team.id}"
  username = "dtinth-bot"
  role     = "member"
}
