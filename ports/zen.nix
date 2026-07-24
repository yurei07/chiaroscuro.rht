{ lib }:
{ colors, variant ? "zen" }:
let p = colors.${variant} or colors.zen; in
''
:root {
  --zen-primary-color: ${p.springBlue} !important;
  --zen-colors-primary: ${p.springBlue} !important;
  --zen-colors-secondary: ${p.zen1} !important;
  --zen-colors-tertiary: ${p.zen2} !important;
  --lwt-accent-color: ${p.zen0} !important;
  --toolbar-color: ${p.oldWhite} !important;
  --tab-selected-bgcolor: ${p.zen1} !important;
}
''
