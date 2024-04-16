local SIZE = 1600
local active   = { 29,  29,  29}
local inactive = {227, 227, 227}

local Root = {
  screen = {size = SIZE, vertically_stretchable = true}
}

local function set_style(GuiElement, GuiStyle)
  for k, v in pairs(GuiStyle) do
      GuiElement.style[k] = v
  end
end

local function on_player_created(event)
  local player = game.players[event.player_index]
  local screen = player.gui.screen.add{
    type = 'frame',
    direction = 'horizontal',
    caption = 'screen (frame)'
  }
  set_style(screen, Root.screen)

  do -- button scroll pane
    local scroll_pane = screen.add{
      type = 'scroll-pane',
      caption = 'scroll-pane',
      direction = 'vertical',
      vertical_scroll_policy = 'auto',
    }

    local button = scroll_pane.add{
      type = 'button',
      caption = 'button'
    }

    local button_auto_toggle = scroll_pane.add{
      type = 'button',
      caption = 'button-auto-toggle',
      auto_toggle = true,
    }
    
    local rounded_button = scroll_pane.add{
      type = 'button',
      style = 'rounded_button',
      caption = 'rounded_button'
    }

    local back_button = scroll_pane.add{
      type = 'button',
      style = 'back_button',
      caption = 'back_button'
    }

    local red_back_button = scroll_pane.add{
      type = 'button',
      style = 'red_back_button',
      caption = 'red_back_button'
    }

    local forward_button = scroll_pane.add{
      type = 'button',
      style = 'forward_button',
      caption = 'forward_button'
    }

    local confirm_button = scroll_pane.add{
      type = 'button',
      style = 'confirm_button',
      caption = 'confirm_button'
    }

    local confirm_button_without_tooltip = scroll_pane.add{
      type = 'button',
      style = 'confirm_button_without_tooltip',
      caption = 'confirm_button_without_tooltip'
    }

    local confirm_double_arrow_button = scroll_pane.add{
      type = 'button',
      style = 'confirm_double_arrow_button',
      caption = 'confirm_double_arrow_button'
    }

    local map_generator_preview_button = scroll_pane.add{
      type = 'button',
      style = 'map_generator_preview_button',
      caption = 'map_generator_preview_button'
    }

    local map_generator_close_preview_button = scroll_pane.add{
      type = 'button',
      style = 'map_generator_close_preview_button',
      caption = 'map_generator_close_preview_button'
    }

    local map_generator_confirm_button = scroll_pane.add{
      type = 'button',
      style = 'map_generator_confirm_button',
      caption = 'map_generator_confirm_button'
    }

    local confirm_in_load_game_button = scroll_pane.add{
      type = 'button',
      style = 'confirm_in_load_game_button',
      caption = 'confirm_in_load_game_button'
    }

    local red_confirm_button = scroll_pane.add{
      type = 'button',
      style = 'red_confirm_button',
      caption = 'red_confirm_button'
    }

    local red_button = scroll_pane.add{
      type = 'button',
      style = 'red_button',
      caption = 'red_button'
    }

    local button_green = scroll_pane.add{
      type = 'button',
      style = 'green_button',
      caption = 'green_button',
    }

    local tool_button = scroll_pane.add{
      type = 'button',
      style = 'tool_button',
      caption = 'tool_button'
    }

    local highlighted_tool_button = scroll_pane.add{
      type = 'button',
      style = 'highlighted_tool_button',
      caption = 'highlighted_tool_button'
    }

    local tool_button_red = scroll_pane.add{
      type = 'button',
      style = 'tool_button_red',
      caption = 'tool_button_red'
    }

    local tool_button_green = scroll_pane.add{
      type = 'button',
      style = 'tool_button_green',
      caption = 'tool_button_green'
    }

    local tool_button_blue = scroll_pane.add{
      type = 'button',
      style = 'tool_button_blue',
      caption = 'tool_button_blue'
    }

    local mini_button = scroll_pane.add{
      type = 'button',
      style = 'mini_button',
      caption = 'mini_button'
    }

    local mini_tool_button_red = scroll_pane.add{
      type = 'button',
      style = 'mini_tool_button_red',
      caption = 'mini_tool_button_red'
    }

    local mini_button_aligned_to_text_vertically = scroll_pane.add{
      type = 'button',
      style = 'mini_button_aligned_to_text_vertically',
      caption = 'mini_button_aligned_to_text_vertically'
    }

    local mini_button_aligned_to_text_vertically_when_centered = scroll_pane.add{
      type = 'button',
      style = 'mini_button_aligned_to_text_vertically_when_centered',
      caption = 'mini_button_aligned_to_text_vertically_when_centered'
    }

    local tip_notice_button = scroll_pane.add{
      type = 'button',
      style = 'tip_notice_button',
      caption = 'tip_notice_button'
    }

    local dialog_button = scroll_pane.add{
      type = 'button',
      style = 'dialog_button',
      caption = 'dialog_button'
    }

    local menu_button = scroll_pane.add{
      type = 'button',
      style = 'menu_button',
      caption = 'menu_button'
    }

    local menu_button_continue = scroll_pane.add{
      type = 'button',
      style = 'menu_button_continue',
      caption = 'menu_button_continue'
    }

    local side_menu_button = scroll_pane.add{
      type = 'button',
      style = 'side_menu_button',
      caption = 'side_menu_button'
    }

    local map_view_options_button = scroll_pane.add{
      type = 'button',
      style = 'map_view_options_button',
      caption = 'map_view_options_button'
    }

    local map_view_add_button = scroll_pane.add{
      type = 'button',
      style = 'map_view_add_button',
      caption = 'map_view_add_button'
    }

    local mod_gui_button = scroll_pane.add{
      type = 'button',
      style = 'mod_gui_button',
      caption = 'mod_gui_button'
    }

    local image_tab_slot = scroll_pane.add{
      type = 'button',
      style = 'image_tab_slot',
      caption = 'image_tab_slot'
    }

    local image_tab_selected_slot = scroll_pane.add{
      type = 'button',
      style = 'image_tab_selected_slot',
      caption = 'image_tab_selected_slot'
    }

    local logistic_slot_button = scroll_pane.add{
      type = 'button',
      style = 'logistic_slot_button',
      caption = 'logistic_slot_button'
    }

    local yellow_logistic_slot_button = scroll_pane.add{
      type = 'button',
      style = 'yellow_logistic_slot_button',
      caption = 'yellow_logistic_slot_button'
    }

    local red_logistic_slot_button = scroll_pane.add{
      type = 'button',
      style = 'red_logistic_slot_button',
      caption = 'red_logistic_slot_button'
    }

    local red_circuit_network_content_slot = scroll_pane.add{
      type = 'button',
      style = 'red_circuit_network_content_slot',
      caption = 'red_circuit_network_content_slot'
    }

    local green_circuit_network_content_slot = scroll_pane.add{
      type = 'button',
      style = 'green_circuit_network_content_slot',
      caption = 'green_circuit_network_content_slot'
    }

    local compact_slot = scroll_pane.add{
      type = 'button',
      style = 'compact_slot',
      caption = 'compact_slot'
    }

    local slot = scroll_pane.add{
      type = 'button',
      style = 'slot',
      caption = 'slot'
    }

    local red_slot = scroll_pane.add{
      type = 'button',
      style = 'red_slot',
      caption = 'red_slot'
    }

    local yellow_slot = scroll_pane.add{
      type = 'button',
      style = 'yellow_slot',
      caption = 'yellow_slot'
    }

    local green_slot = scroll_pane.add{
      type = 'button',
      style = 'green_slot',
      caption = 'green_slot'
    }

    local blue_slot = scroll_pane.add{
      type = 'button',
      style = 'blue_slot',
      caption = 'blue_slot'
    }

    local tool_equip_virtual_slot = scroll_pane.add{
      type = 'button',
      style = 'tool_equip_virtual_slot',
      caption = 'tool_equip_virtual_slot'
    }

    local working_tool_equip_virtual_slot = scroll_pane.add{
      type = 'button',
      style = 'working_tool_equip_virtual_slot',
      caption = 'working_tool_equip_virtual_slot'
    }

    local not_working_tool_equip_virtual_slot = scroll_pane.add{
      type = 'button',
      style = 'not_working_tool_equip_virtual_slot',
      caption = 'not_working_tool_equip_virtual_slot'
    }

    local tool_equip_ammo_slot = scroll_pane.add{
      type = 'button',
      style = 'tool_equip_ammo_slot',
      caption = 'tool_equip_ammo_slot'
    }

    local inventory_slot = scroll_pane.add{
      type = 'button',
      style = 'inventory_slot',
      caption = 'inventory_slot'
    }

    local filter_inventory_slot = scroll_pane.add{
      type = 'button',
      style = 'filter_inventory_slot',
      caption = 'filter_inventory_slot'
    }

    local closed_inventory_slot = scroll_pane.add{
      type = 'button',
      style = 'closed_inventory_slot',
      caption = 'closed_inventory_slot'
    }

    local red_inventory_slot = scroll_pane.add{
      type = 'button',
      style = 'red_inventory_slot',
      caption = 'red_inventory_slot'
    }

    local yellow_inventory_slot = scroll_pane.add{
      type = 'button',
      style = 'yellow_inventory_slot',
      caption = 'yellow_inventory_slot'
    }

    local recipe_slot_button = scroll_pane.add{
      type = 'button',
      style = 'recipe_slot_button',
      caption = 'recipe_slot_button'
    }

    local tracking_off_button = scroll_pane.add{
      type = 'button',
      style = 'tracking_off_button',
      caption = 'tracking_off_button'
    }

    local tracking_on_button = scroll_pane.add{
      type = 'button',
      style = 'tracking_on_button',
      caption = 'tracking_on_button'
    }

    local research_queue_cancel_button = scroll_pane.add{
      type = 'button',
      style = 'research_queue_cancel_button',
      caption = 'research_queue_cancel_button'
    }

    local transparent_slot = scroll_pane.add{
      type = 'button',
      style = 'transparent_slot',
      caption = 'transparent_slot'
    }

    local frame_button = scroll_pane.add{
      type = 'button',
      style = 'frame_button',
      caption = 'frame_button'
    }

    local frame_action_button = scroll_pane.add{
      type = 'button',
      style = 'frame_action_button',
      caption = 'frame_action_button'
    }

    local tip_notice_close_button = scroll_pane.add{
      type = 'button',
      style = 'tip_notice_close_button',
      caption = 'tip_notice_close_button'
    }

    local blueprint_record_slot_button = scroll_pane.add{
      type = 'button',
      style = 'blueprint_record_slot_button',
      caption = 'blueprint_record_slot_button'
    }

    local blueprint_record_selection_button = scroll_pane.add{
      type = 'button',
      style = 'blueprint_record_selection_button',
      caption = 'blueprint_record_selection_button'
    }

    local drop_target_button = scroll_pane.add{
      type = 'button',
      style = 'drop_target_button',
      caption = 'drop_target_button'
    }

    local compact_red_slot = scroll_pane.add{
      type = 'button',
      style = 'compact_red_slot',
      caption = 'compact_red_slot'
    }

    local inventory_limit_slot_button = scroll_pane.add{
      type = 'button',
      style = 'inventory_limit_slot_button',
      caption = 'inventory_limit_slot_button'
    }

    local working_weapon_button = scroll_pane.add{
      type = 'button',
      style = 'working_weapon_button',
      caption = 'working_weapon_button'
    }

    local not_working_weapon_button = scroll_pane.add{
      type = 'button',
      style = 'not_working_weapon_button',
      caption = 'not_working_weapon_button'
    }

    local omitted_technology_slot = scroll_pane.add{
      type = 'button',
      style = 'omitted_technology_slot',
      caption = 'omitted_technology_slot'
    }

    local crafting_queue_slot = scroll_pane.add{
      type = 'button',
      style = 'crafting_queue_slot',
      caption = 'crafting_queue_slot'
    }

    local promised_crafting_queue_slot = scroll_pane.add{
      type = 'button',
      style = 'promised_crafting_queue_slot',
      caption = 'promised_crafting_queue_slot'
    }

    local control_settings_button = scroll_pane.add{
      type = 'button',
      style = 'control_settings_button',
      caption = 'control_settings_button'
    }

    local control_settings_section_button = scroll_pane.add{
      type = 'button',
      style = 'control_settings_section_button',
      caption = 'control_settings_section_button'
    }

    local dropdown_button = scroll_pane.add{
      type = 'button',
      style = 'dropdown_button',
      caption = 'dropdown_button'
    }

    local not_accessible_station_in_station_selection = scroll_pane.add{
      type = 'button',
      style = 'not_accessible_station_in_station_selection',
      caption = 'not_accessible_station_in_station_selection'
    }

    local partially_accessible_station_in_station_selection = scroll_pane.add{
      type = 'button',
      style = 'partially_accessible_station_in_station_selection',
      caption = 'partially_accessible_station_in_station_selection'
    }

    local new_game_header_list_box_item = scroll_pane.add{
      type = 'button',
      style = 'new_game_header_list_box_item',
      caption = 'new_game_header_list_box_item'
    }

    local list_box_item = scroll_pane.add{
      type = 'button',
      style = 'list_box_item',
      caption = 'list_box_item'
    }

    local train_status_button = scroll_pane.add{
      type = 'button',
      style = 'train_status_button',
      caption = 'train_status_button'
    }

    local title_tip_item = scroll_pane.add{
      type = 'button',
      style = 'title_tip_item',
      caption = 'title_tip_item'
    }

    local item_and_count_select_confirm = scroll_pane.add{
      type = 'button',
      style = 'item_and_count_select_confirm',
      caption = 'item_and_count_select_confirm'
    }

    local button_with_shadow = scroll_pane.add{
      type = 'button',
      style = 'button_with_shadow',
      caption = 'button_with_shadow'
    }

    local train_schedule_add_wait_condition_button = scroll_pane.add{
      type = 'button',
      style = 'train_schedule_add_wait_condition_button',
      caption = 'train_schedule_add_wait_condition_button'
    }

    local train_schedule_add_station_button = scroll_pane.add{
      type = 'button',
      style = 'train_schedule_add_station_button',
      caption = 'train_schedule_add_station_button'
    }

    local train_schedule_action_button = scroll_pane.add{
      type = 'button',
      style = 'train_schedule_action_button',
      caption = 'train_schedule_action_button'
    }

    local train_schedule_comparison_type_button = scroll_pane.add{
      type = 'button',
      style = 'train_schedule_comparison_type_button',
      caption = 'train_schedule_comparison_type_button'
    }

    local locomotive_minimap_button = scroll_pane.add{
      type = 'button',
      style = 'locomotive_minimap_button',
      caption = 'locomotive_minimap_button'
    }

    local target_station_in_schedule_in_train_view_list_box_item = scroll_pane.add{
      type = 'button',
      style = 'target_station_in_schedule_in_train_view_list_box_item',
      caption = 'target_station_in_schedule_in_train_view_list_box_item'
    }

    local no_path_station_in_schedule_in_train_view_list_box_item = scroll_pane.add{
      type = 'button',
      style = 'no_path_station_in_schedule_in_train_view_list_box_item',
      caption = 'no_path_station_in_schedule_in_train_view_list_box_item'
    }

    local default_permission_group_list_box_item = scroll_pane.add{
      type = 'button',
      style = 'default_permission_group_list_box_item',
      caption = 'default_permission_group_list_box_item'
    }

    local browse_games_gui_toggle_favorite_on_button = scroll_pane.add{
      type = 'button',
      style = 'browse_games_gui_toggle_favorite_on_button',
      caption = 'browse_games_gui_toggle_favorite_on_button'
    }

    local browse_games_gui_toggle_favorite_off_button = scroll_pane.add{
      type = 'button',
      style = 'browse_games_gui_toggle_favorite_off_button',
      caption = 'browse_games_gui_toggle_favorite_off_button'
    }

    local cancel_close_button = scroll_pane.add{
      type = 'button',
      style = 'cancel_close_button',
      caption = 'cancel_close_button'
    }

    local close_button = scroll_pane.add{
      type = 'button',
      style = 'close_button',
      caption = 'close_button'
    }

    local current_research_info_button = scroll_pane.add{
      type = 'button',
      style = 'current_research_info_button',
      caption = 'current_research_info_button'
    }

    local quick_bar_page_button = scroll_pane.add{
      type = 'button',
      style = 'quick_bar_page_button',
      caption = 'quick_bar_page_button'
    }

    local quick_bar_slot_button = scroll_pane.add{
      type = 'button',
      style = 'quick_bar_slot_button',
      caption = 'quick_bar_slot_button'
    }

    local tool_bar_open_button = scroll_pane.add{
      type = 'button',
      style = 'tool_bar_open_button',
      caption = 'tool_bar_open_button'
    }

    local dark_rounded_button = scroll_pane.add{
      type = 'button',
      style = 'dark_rounded_button',
      caption = 'dark_rounded_button'
    }

    local train_schedule_item_select_button = scroll_pane.add{
      type = 'button',
      style = 'train_schedule_item_select_button',
      caption = 'train_schedule_item_select_button'
    }

    local train_schedule_fulfilled_item_select_button = scroll_pane.add{
      type = 'button',
      style = 'train_schedule_fulfilled_item_select_button',
      caption = 'train_schedule_fulfilled_item_select_button'
    }

    local slot_button = scroll_pane.add{
      type = 'button',
      style = 'slot_button',
      caption = 'slot_button'
    }

    local big_slot_button = scroll_pane.add{
      type = 'button',
      style = 'big_slot_button',
      caption = 'big_slot_button'
    }

    local slot_button_in_shallow_frame = scroll_pane.add{
      type = 'button',
      style = 'slot_button_in_shallow_frame',
      caption = 'slot_button_in_shallow_frame'
    }

    local statistics_slot_button = scroll_pane.add{
      type = 'button',
      style = 'statistics_slot_button',
      caption = 'statistics_slot_button'
    }

    local yellow_slot_button = scroll_pane.add{
      type = 'button',
      style = 'yellow_slot_button',
      caption = 'yellow_slot_button'
    }

    local red_slot_button = scroll_pane.add{
      type = 'button',
      style = 'red_slot_button',
      caption = 'red_slot_button'
    }

    local slot_sized_button = scroll_pane.add{
      type = 'button',
      style = 'slot_sized_button',
      caption = 'slot_sized_button'
    }

    local compact_slot_sized_button = scroll_pane.add{
      type = 'button',
      style = 'compact_slot_sized_button',
      caption = 'compact_slot_sized_button'
    }

    local slot_button_that_fits_textline = scroll_pane.add{
      type = 'button',
      style = 'slot_button_that_fits_textline',
      caption = 'slot_button_that_fits_textline'
    }

    local slot_sized_button_pressed = scroll_pane.add{
      type = 'button',
      style = 'slot_sized_button_pressed',
      caption = 'slot_sized_button_pressed'
    }

    local slot_sized_button_blue = scroll_pane.add{
      type = 'button',
      style = 'slot_sized_button_blue',
      caption = 'slot_sized_button_blue'
    }

    local slot_sized_button_red = scroll_pane.add{
      type = 'button',
      style = 'slot_sized_button_red',
      caption = 'slot_sized_button_red'
    }

    local slot_sized_button_green = scroll_pane.add{
      type = 'button',
      style = 'slot_sized_button_green',
      caption = 'slot_sized_button_green'
    }

    local shortcut_bar_button = scroll_pane.add{
      type = 'button',
      style = 'shortcut_bar_button',
      caption = 'shortcut_bar_button'
    }

    local shortcut_bar_button_blue = scroll_pane.add{
      type = 'button',
      style = 'shortcut_bar_button_blue',
      caption = 'shortcut_bar_button_blue'
    }

    local shortcut_bar_button_red = scroll_pane.add{
      type = 'button',
      style = 'shortcut_bar_button_red',
      caption = 'shortcut_bar_button_red'
    }

    local shortcut_bar_button_green = scroll_pane.add{
      type = 'button',
      style = 'shortcut_bar_button_green',
      caption = 'shortcut_bar_button_green'
    }

    local shortcut_bar_button_small = scroll_pane.add{
      type = 'button',
      style = 'shortcut_bar_button_small',
      caption = 'shortcut_bar_button_small'
    }

    local shortcut_bar_button_small = scroll_pane.add{
      type = 'button',
      style = 'shortcut_bar_button_small',
      caption = 'shortcut_bar_button_small'
    }

    local shortcut_bar_button_small_red = scroll_pane.add{
      type = 'button',
      style = 'shortcut_bar_button_small_red',
      caption = 'shortcut_bar_button_small_red'
    }

    local shortcut_bar_button_small_blue = scroll_pane.add{
      type = 'button',
      style = 'shortcut_bar_button_small_blue',
      caption = 'shortcut_bar_button_small_blue'
    }

    local slider_button = scroll_pane.add{
      type = 'button',
      style = 'slider_button',
      caption = 'slider_button'
    }

    local left_slider_button = scroll_pane.add{
      type = 'button',
      style = 'left_slider_button',
      caption = 'left_slider_button'
    }

    local right_slider_button = scroll_pane.add{
      type = 'button',
      style = 'right_slider_button',
      caption = 'right_slider_button'
    }

    local train_schedule_fulfilled_delete_button = scroll_pane.add{
      type = 'button',
      style = 'train_schedule_fulfilled_delete_button',
      caption = 'train_schedule_fulfilled_delete_button'
    }

    local train_schedule_temporary_station_delete_button = scroll_pane.add{
      type = 'button',
      style = 'train_schedule_temporary_station_delete_button',
      caption = 'train_schedule_temporary_station_delete_button'
    }

    local dark_button = scroll_pane.add{
      type = 'button',
      style = 'dark_button',
      caption = 'dark_button'
    }

    local train_schedule_delete_button = scroll_pane.add{
      type = 'button',
      style = 'train_schedule_delete_button',
      caption = 'train_schedule_delete_button'
    }

    local train_schedule_condition_time_selection_button = scroll_pane.add{
      type = 'button',
      style = 'train_schedule_condition_time_selection_button',
      caption = 'train_schedule_condition_time_selection_button'
    }

    local shortcut_bar_expand_button = scroll_pane.add{
      type = 'button',
      style = 'shortcut_bar_expand_button',
      caption = 'shortcut_bar_expand_button'
    }

    local choose_chat_icon_button = scroll_pane.add{
      type = 'button',
      style = 'choose_chat_icon_button',
      caption = 'choose_chat_icon_button'
    }

    local choose_chat_icon_in_textbox_button = scroll_pane.add{
      type = 'button',
      style = 'choose_chat_icon_in_textbox_button',
      caption = 'choose_chat_icon_in_textbox_button'
    }
  end

  do -- 
  end

  screen.force_auto_center()
end

script.on_event(defines.events.on_player_created, on_player_created)