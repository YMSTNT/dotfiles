{ home-manager, ... }:

{
  home-manager.users.ymstnt = {
    programs.git = {
      enable = true;
      userName = "YMSTNT";
      userEmail = "ymstnt@mailbox.org";
      aliases = {
        s = "status -uno";
        d = "diff";
        c = "commit -m";
        p = "!git pull && git push";
        br = "branch --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(contents:subject) %(color:green)(%(committerdate:relative)) [%(authorname)]' --sort=-committerdate";
        lg = "!git log --pretty=format:\'%C(magenta)%h%Creset -%C(red)%d%Creset %s %C(dim green)(%cr) [%an]\' --abbrev-commit -30";
      };
      extraConfig = {
        init = {
          defaultBranch = "main";
        };
        core = {
          editor = "micro";
        };
        github = {
          user = "YMSTNT";
        };
      };
    };
  };
}
