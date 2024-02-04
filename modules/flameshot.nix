{ pkgs, hm, ... }:
{
  hm.services.flameshot = {
    enable = false; # Change this to true to enable Flameshot

    settings = {
      General = {
        contrastOpacity = 188;
        disabledTrayIcon = true;
        drawColor = "#ff0e00";
        drawFontSize = 8;
        drawThickness = 3;
        saveAfterCopy = true;
        savePath = "/home/ymstnt/Pictures/Flameshot";
        savePathFixed = true;
        showHelp = false;
        showStartupLaunchMessage = true;
        startupLaunch = true;
        undoLimit = 99;
      };

      Shortcuts = {
        TYPE_ARROW = "A";
        TYPE_CIRCLE = "C";
        TYPE_CIRCLECOUNT = "";
        TYPE_COMMIT_CURRENT_TOOL = "Ctrl+Return";
        TYPE_COPY = "Ctrl+C";
        TYPE_DELETE_CURRENT_TOOL = "Del";
        TYPE_DRAWER = "D";
        TYPE_EXIT = "Ctrl+Q";
        TYPE_MARKER = "M";
        TYPE_MOVESELECTION = "Ctrl+M";
        TYPE_MOVE_DOWN = "Down";
        TYPE_MOVE_LEFT = "Left";
        TYPE_MOVE_RIGHT = "Right";
        TYPE_MOVE_UP = "Up";
        TYPE_OPEN_APP = "Ctrl+O";
        TYPE_PENCIL = "P";
        TYPE_PIN = "";
        TYPE_PIXELATE = "B";
        TYPE_RECTANGLE = "R";
        TYPE_REDO = "Ctrl+Shift+Z";
        TYPE_RESIZE_DOWN = "Shift+Down";
        TYPE_RESIZE_LEFT = "Shift+Left";
        TYPE_RESIZE_RIGHT = "Shift+Right";
        TYPE_RESIZE_UP = "Shift+Up";
        TYPE_SAVE = "Ctrl+S";
        TYPE_SELECTION = "S";
        TYPE_SELECTIONINDICATOR = "";
        TYPE_SELECT_ALL = "Ctrl+A";
        TYPE_TEXT = "T";
        TYPE_TOGGLE_PANEL = "Space";
        TYPE_UNDO = "Ctrl+Z";
      };
    };
  };
}