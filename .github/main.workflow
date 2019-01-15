workflow "Security" {
  on = "push"
  resolves = ["Run a security audit"]
}

action "Run a security audit" {
  uses = "actions/npm@e7aaefed7c9f2e83d493ff810f17fa5ccd7ed437"
  runs = "npm audit"
}
