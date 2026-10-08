# setup.ps1 — one-command bootstrap of SD Masters on a new laptop.
#
#   git clone https://github.com/srimanoram/Backend-Masters.git E:\SDMasters
#   pwsh -File E:\SDMasters\setup.ps1                 # clones YOUR private workspaces into place
#   pwsh -File E:\SDMasters\setup.ps1 -SharedOnly     # a friend: teachers only, no workspaces
#
# Anyone can use the teachers (this repo). Workspaces are private per learner: edit $Workspaces
# below to point at your own repos (or run with -SharedOnly and let each master create fresh ones).
param(
    [switch]$SharedOnly,
    [string]$GitHubUser = 'srimanoram',
    [switch]$WithClaudeState   # also clone + restore Claude Code memory/transcripts (same path required)
)

$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot

# master folder  -> (repo name, workspace folder name inside the master folder)
$Workspaces = @{
    'DSA-Master'        = @{ repo = 'sdm-dsa-workspace';      dir = 'workspace'  }
    'LLD-Master'        = @{ repo = 'lld-practice';           dir = 'lld-master' }
    'HLD-Master'        = @{ repo = 'sdm-hld-workspace';      dir = 'workspace'  }
    'AIEngineer-Master' = @{ repo = 'sdm-ai-workspace';       dir = 'workspace'  }
    'Interviewer'       = @{ repo = 'sdm-interviewer-ledger'; dir = 'workspace'  }
}

if ($SharedOnly) {
    Write-Host "Teachers only. Open Claude Code in any master folder and say 'Let's begin.'" -ForegroundColor Green
    return
}

foreach ($master in $Workspaces.Keys) {
    $w      = $Workspaces[$master]
    $target = Join-Path (Join-Path $root $master) $w.dir
    $url    = "https://github.com/$GitHubUser/$($w.repo).git"
    if (Test-Path (Join-Path $target '.git')) {
        Write-Host "$master : workspace already present, pulling" ; git -C $target pull --ff-only
    } else {
        Write-Host "$master : cloning $url -> $target"
        git clone -q $url $target
    }
    # The gitignored marker each master reads to find its workspace.
    Set-Content -Path (Join-Path (Join-Path $root $master) '.workspace') -Value $w.dir -NoNewline
}

# Per-workspace local setup that git does not carry.
$ai = Join-Path $root 'AIEngineer-Master\workspace'
if ((Test-Path $ai) -and -not (Test-Path (Join-Path $ai '.venv'))) {
    Write-Host "AIEngineer: creating venv + installing requirements"
    python -m venv (Join-Path $ai '.venv')
    & (Join-Path $ai '.venv\Scripts\python.exe') -m pip install -q -r (Join-Path $ai 'requirements.txt')
    Write-Host "AIEngineer: copy .env.example -> .env and add your API key (never committed)." -ForegroundColor Yellow
}

if ($WithClaudeState) {
    $state = 'E:\SDMasters-claude-state'
    if (-not (Test-Path $state)) { git clone -q "https://github.com/$GitHubUser/sdm-claude-state.git" $state }
    pwsh -File (Join-Path $state 'restore.ps1')
}

Write-Host "`nReady. Workspaces in place, markers written. Open Claude Code inside a master folder." -ForegroundColor Green
