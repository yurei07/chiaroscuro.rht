{ lib }:
{ colors, variant ? "zen" }:
let p = colors.${variant} or colors.zen; in
{
  gtk3 = ''
    @define-color theme_bg_color ${p.zen0};
    @define-color theme_fg_color ${p.oldWhite};
    @define-color theme_base_color ${p.zen1};
    @define-color theme_text_color ${p.oldWhite};
    @define-color theme_selected_bg_color ${p.springBlue};
    @define-color theme_selected_fg_color ${p.zen0};
    @define-color insensitive_bg_color ${p.zen1};
    @define-color insensitive_fg_color ${p.katanaGray};
    @define-color borders ${p.zen3};
    @define-color warning_color ${p.carpYellow};
    @define-color error_color ${p.autumnRed};
    @define-color success_color ${p.autumnGreen};
  '';

  gtk4 = ''
    @define-color window_bg_color ${p.zen0};
    @define-color window_fg_color ${p.oldWhite};
    @define-color view_bg_color ${p.zen1};
    @define-color view_fg_color ${p.oldWhite};
    @define-color headerbar_bg_color ${p.zen0};
    @define-color headerbar_fg_color ${p.oldWhite};
    @define-color headerbar_border_color ${p.zen3};
    @define-color card_bg_color ${p.zen1};
    @define-color card_fg_color ${p.oldWhite};
    @define-color dialog_bg_color ${p.zen1};
    @define-color popover_bg_color ${p.zen1};
    @define-color accent_color ${p.springBlue};
    @define-color accent_bg_color ${p.springBlue};
    @define-color accent_fg_color ${p.zen0};
    @define-color destructive_color ${p.autumnRed};
    @define-color success_color ${p.autumnGreen};
    @define-color warning_color ${p.carpYellow};
    @define-color window_outline_color ${p.zen3};
  '';
}
