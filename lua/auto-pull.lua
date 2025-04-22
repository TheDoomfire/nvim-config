local M = {}

-- Check if the current directory is a Git repository
local function is_git_repo()
  local cwd = vim.fn.getcwd()
  local git_dir = cwd .. "/.git"
  return vim.loop.fs_stat(git_dir) ~= nil
end

-- Execute Git pull and handle conflicts
function M.auto_pull()
  if not is_git_repo() then
    return
  end

  -- Run git pull
  vim.fn.jobstart({ "git", "pull" }, {
    cwd = vim.fn.getcwd(),
    on_exit = function(_, code, _)
      if code ~= 0 then
        vim.notify("Git pull failed!", vim.log.levels.ERROR)
        return
      end

      -- Check for merge conflicts
      vim.fn.jobstart({ "git", "diff", "--check", "--quiet" }, {
        cwd = vim.fn.getcwd(),
        on_exit = function(_, conflict_code, _)
          if conflict_code == 0 then
            vim.notify("✅ Auto-pulled successfully!", vim.log.levels.INFO)
          else
            vim.notify("⚔️ Merge conflicts detected!", vim.log.levels.WARN)
          end
        end,
      })
    end,
  })
end

return M
