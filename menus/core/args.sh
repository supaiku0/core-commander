#!/usr/bin/env bash

menu_manage_core_parse_args ()
{
    local choice

    read -p "$(text_blue "    Please enter your choice: ")" choice

    case "$choice" in
        u|U)
            core_update

            press_to_continue

            menu_manage_core
        ;;
        p|P)
            core_uninstall

            press_to_continue

            menu_manage_core
        ;;
        c|C)
            core_configure

            press_to_continue

            menu_manage_core
        ;;
        h|H)
            menu_manage_core_help
        ;;
        x|X)
            menu_main
        ;;
        *)
            echo -e "$(text_yellow "    Invalid option chosen, please select a valid option and try again.")"
            wait_to_continue
            menu_manage_core
        ;;
    esac
}
