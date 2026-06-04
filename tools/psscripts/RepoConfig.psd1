@{
  RepoName = 'webrtc-engineering'

  ExpectedFolders = @(
    '.copilot'
    '.cursor'
    '.claude'
    'docs'
    'demos'
    'projects'
    'experiments'
    'assets'
    'source-material'
    'src'
    'tools'
    'tools\psscripts'
    'tools\scripts'
    '.github'
    '.cursor\rules'
  )

  YamlCheckRoots = @(
    'docs'
  )

  DisallowInterviewLanguage = $false
}
