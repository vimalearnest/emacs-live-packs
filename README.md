# emacs-live-packs

A collection of optional packs for [Emacs Live](https://github.com/vimalearnest/emacs-live), each as an independent git submodule.

## Available Packs

| Pack | Description |
|------|-------------|
| `projectile-pack` | Project management with Projectile |
| `elixir-pack` | Elixir language support |
| `erlang-pack` | Erlang language support |
| `rest-client-pack` | REST client for testing HTTP APIs |
| `org-mode-pack` | Extended org-mode configuration |
| `es-mode-pack` | Elasticsearch mode |
| `ack-pack` | Ack search integration |
| `slime-pack` | SLIME for Common Lisp development |
| `solarized-pack` | Solarized colour theme |
| `lisp-pack` | Common Lisp support |

## Installation

### 1. Clone this repo

```bash
git clone git@github.com:vimalearnest/emacs-live-packs.git ~/src/github/emacs-live-packs
cd ~/src/github/emacs-live-packs
git submodule update --init --recursive
```

### 2. Enable packs in Emacs Live

Add any combination of packs to your `~/.emacs-live.el`:

```elisp
(live-add-packs '("~/src/github/emacs-live-packs/projectile-pack"))
(live-add-packs '("~/src/github/emacs-live-packs/elixir-pack"))
(live-add-packs '("~/src/github/emacs-live-packs/slime-pack"))
```

Or enable all of them at once:

```elisp
(dolist (pack '("projectile-pack"
                "elixir-pack"
                "erlang-pack"
                "rest-client-pack"
                "org-mode-pack"
                "es-mode-pack"
                "ack-pack"
                "slime-pack"
                "solarized-pack"
                "lisp-pack"))
  (live-add-packs (list (concat "~/src/github/emacs-live-packs/" pack))))
```

### 3. Restart Emacs

The packs will be loaded after the default Emacs Live packs.

## Updating

To update all packs to their latest versions:

```bash
cd ~/src/github/emacs-live-packs
git submodule update --remote --merge
```
