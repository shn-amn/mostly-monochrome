local lush = require('lush')

return function(p, basic)
  return lush(function()
    ---@diagnostic disable: undefined-global
    return {
      NvimTreeSignColumn { basic.LineNr },
      NvimTreeFolderIcon { fg = p.grey9 },

      NvimTreeGitStaged { },
      NvimTreeGitRenamed { },
      NvimTreeGitNew { },
      NvimTreeGitMerge { },
      NvimTreeGitIgnored { },
      NvimTreeGitDirty { },
      NvimTreeGitDeleted { },
      NvimTreeGitStagedIcon { fg = p.green },
      NvimTreeGitRenamedIcon { fg = p.grey9 },
      NvimTreeGitNewIcon { fg = p.grey9 },
      NvimTreeGitMergeIcon { fg = p.red },
      NvimTreeGitIgnoredIcon { fg = p.grey6 },
      NvimTreeGitDirtyIcon { fg = p.red },
      NvimTreeGitDeletedIcon { fg = p.red },
      NvimTreeGitFileStagedHL { NvimTreeGitStagedIcon },
      NvimTreeGitFileRenamedHL { NvimTreeGitRenamedIcon },
      NvimTreeGitFileNewHL { NvimTreeGitNewIcon },
      NvimTreeGitFileMergeHL { NvimTreeGitMergeIcon },
      NvimTreeGitFileIgnoredHL { NvimTreeGitIgnoredIcon },
      NvimTreeGitFileDirtyHL { NvimTreeGitDirtyIcon },
      NvimTreeGitFileDeletedHL { NvimTreeGitDeletedIcon },
      NvimTreeGitFolderStagedHL { NvimTreeGitFileStagedHL },
      NvimTreeGitFolderRenamedHL { NvimTreeGitFileRenamedHL },
      NvimTreeGitFolderNewHL { NvimTreeGitFileNewHL },
      NvimTreeGitFolderMergeHL { NvimTreeGitFileMergeHL },
      NvimTreeGitFolderIgnoredHL { NvimTreeGitFileIgnoredHL },
      NvimTreeGitFolderDirtyHL { NvimTreeGitFileDirtyHL },
      NvimTreeGitFolderDeletedHL { NvimTreeGitFileDeletedHL },
    }
    ---@diagnostic enable: undefined-global
  end)
end
