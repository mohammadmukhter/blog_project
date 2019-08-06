@include ('user_panel.layouts.user_panel_css')
@include ('user_panel.layouts.user_panel_header_top')
@include ('user_panel.layouts.user_panel_main_menu')
@include ('user_panel.layouts.user_panel_content_top')

	@yield ('frontend_section')

@include ('user_panel.layouts.user_panel_footer_add')
@include ('user_panel.layouts.user_panel_footer')
@include ('user_panel.layouts.user_panel_js')