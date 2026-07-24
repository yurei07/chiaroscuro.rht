{ lib }:
{ colors, variant ? "zen" }:
let
  palette = colors.${variant} or colors.zen;
  strip = c: lib.removePrefix "#" c;
in
''
  general {
    col.active_border = rgb(${strip palette.oldWhite})
    col.inactive_border = rgb(${strip palette.zen2})
  }
  
  decoration {
    active_opacity = 1.0
    inactive_opacity = 0.85
    shadow {
      enabled = true
      range = 20
      color = rgba(${strip palette.zen0}cc)
    }
  }
  
''
