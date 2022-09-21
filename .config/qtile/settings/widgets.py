from libqtile import widget
from .theme import colors

def base(fg='text', bg='dark'): 
    return {
        'foreground': colors[fg],
        'background': colors[bg]
    }


def separator():
    return widget.Sep(**base(), linewidth=0, padding=5)


def workspaces(): 
    return [
        separator(),
        widget.GroupBox(
            **base(fg='light'),
            font='cantarell bold',
            fontsize=12,
            margin_y=3,
            margin_x=0,
            padding_y=8,
            padding_x=5,
            borderwidth=1,
            active=colors['active'],
            inactive=colors['inactive'],
            rounded=False,
            highlight_method='block',
            urgent_alert_method='block',
            urgent_border=colors['urgent'],
            this_current_screen_border=colors['focus'],
            this_screen_border=colors['grey'],
            other_current_screen_border=colors['dark'],
            other_screen_border=colors['dark'],
            disable_drag=True
        ),
        separator(),
        widget.WindowName(**base(fg='focus'), fontsize=12, padding=5),
        separator(),
    ]


primary_widgets = [
    *workspaces(),
    separator(),
    widget.Battery(
        background=colors['color2'],
        battery=0,
        format=' {char} {percent:2.0%} ',
    ),
    widget.CurrentLayoutIcon(**base(bg='color2'), scale=0.65),
    widget.CurrentLayout(**base(bg='color2'), padding=5),
    separator(),
    widget.Clock(**base(bg='color1'), format='%d-%m-%Y %I:%M %P'),
    separator()
]

secondary_widgets = [
    *workspaces(),
    separator(),
    widget.CurrentLayoutIcon(**base(bg='color2'), scale=0.65),
    widget.CurrentLayout(**base(bg='color2'), padding=5),
    separator(),
    widget.Clock(**base(bg='color1'), format='%I:%M %P'),
    separator()
]

widget_defaults = {
    'font': 'cantarell Bold',
    'fontsize': 12,
    'padding': 1,
}
extension_defaults = widget_defaults.copy()
