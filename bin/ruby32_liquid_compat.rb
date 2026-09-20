# Local-preview-only shim, NOT loaded during a real GitHub Pages build.
#
# Liquid 4.0.3 (pinned by the `github-pages` gem, to match GitHub's actual
# production build environment) calls Object#tainted?/#untaint, which Ruby
# fully removed in 3.2. The `github-pages` gem also force-disables Jekyll's
# `_plugins/` loading (safe: true, randomized plugins_dir) to mirror GitHub's
# sandbox, so this can't be a plugin — it has to be required before Ruby even
# boots Jekyll. See bin/serve.sh.
#
# Delete this once github-pages/Liquid drop the call, or if you preview with
# an older local Ruby (<3.2).
class Object
  unless method_defined?(:tainted?)
    def tainted?
      false
    end
  end

  unless method_defined?(:untaint)
    def untaint
      self
    end
  end
end
