from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import *

class Cyberpunk(ColorScheme):
    progress_bar_color = cyan

    def use(self, context):
        fg, bg, attr = default_colors

        if context.reset:
            return default_colors

        # Directory
        if context.directory:
            fg = cyan
            attr |= bold

        # Executable files
        if context.executable and not context.directory:
            fg = green

        # Selected file
        if context.selected:
            bg = black
            fg = yellow

        # Symlink
        if context.link:
            fg = yellow

        # Media Files
        if context.media:
            fg = magenta

        # Tag marker (custom marker style)
        if context.tag_marker:
            fg = red

        # Border for inactive pane
        if context.inactive_pane:
            fg = blue

        return fg, bg, attr
