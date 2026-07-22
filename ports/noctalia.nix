{ lib }:

{ colors, variant ? "zen" }:
let
  palette = colors.${variant} or colors.zen;
in
builtins.toJSON {
  dark = {
    mPrimary          = palette.springBlue;
    mOnPrimary        = palette.zen0;
    mSecondary        = palette.autumnGreen;
    mOnSecondary      = palette.zen0;
    mTertiary         = palette.carpYellow;
    mOnTertiary       = palette.zen0;
    mError            = palette.autumnRed;
    mOnError          = palette.fujiWhite;
    mSurface          = palette.zen0;
    mOnSurface        = palette.oldWhite;
    mSurfaceVariant   = palette.zen1;
    mOnSurfaceVariant = palette.springBlue;
    mOutline          = palette.zen3;
    mShadow           = "#000000";
    mHover            = palette.zen2;
    mOnHover          = palette.fujiWhite;

    terminal = {
      background  = palette.zen0;
      foreground  = palette.oldWhite;
      cursor      = palette.oldWhite;
      cursorText  = palette.zen0;
      selectionBg = palette.zenBlue2;
      selectionFg = palette.oldWhite;
      normal = {
        black = palette.zen0; red = palette.autumnRed;
        green = palette.autumnGreen; yellow = palette.autumnYellow;
        blue = palette.springBlue; magenta = palette.springViolet1;
        cyan = palette.zenAqua1; white = palette.oldWhite;
      };
      bright = {
        black = palette.katanaGray; red = palette.zenRed;
        green = palette.springGreen; yellow = palette.carpYellow;
        blue = palette.springBlue; magenta = palette.springViolet1;
        cyan = palette.zenAqua2; white = palette.fujiWhite;
      };
    };
  };
}
