/* Copyright 2017 Siddhartha Das (bablu.boy@gmail.com)
*
* This file is part of Bookworm and provides the pop over
* menu for user preferences for font, profile, zoom, etc
*
* Bookworm is free software: you can redistribute it
* and/or modify it under the terms of the GNU General Public License as
* published by the Free Software Foundation, either version 3 of the
* License, or (at your option) any later version.
*
* Bookworm is distributed in the hope that it will be
* useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
* Public License for more details.
*
* You should have received a copy of the GNU General Public License along
* with Bookworm. If not, see http://www.gnu.org/licenses/.
*/
using Gtk;
public class BookwormApp.PreferencesMenu {
  public static Gtk.Popover prefPopover;

  public static Gtk.Popover createPrefPopOver(Gtk.Button popWidget){
    if(prefPopover != null){
      return prefPopover;
    }
    prefPopover = new Gtk.Popover (popWidget);

    Gtk.Image menu_icon_text_large = new Gtk.Image.from_icon_name ("format-text-larger-symbolic", IconSize.LARGE_TOOLBAR);
    Gtk.Button textLargerButton = new Gtk.Button();
    textLargerButton.set_image (menu_icon_text_large);
    textLargerButton.set_halign(Gtk.Align.START);
    textLargerButton.set_relief (ReliefStyle.NONE);
    textLargerButton.set_tooltip_markup (BookwormApp.Constants.TOOLTIP_TEXT_FOR_FONT_SIZE_INCREASE);

    Gtk.Image menu_icon_text_small = new Gtk.Image.from_icon_name ("format-text-smaller-symbolic", IconSize.LARGE_TOOLBAR);
    Gtk.Button textSmallerButton = new Gtk.Button();
    textSmallerButton.set_image (menu_icon_text_small);
    textSmallerButton.set_halign(Gtk.Align.END);
    textSmallerButton.set_relief (ReliefStyle.NONE);
    textSmallerButton.set_tooltip_markup (BookwormApp.Constants.TOOLTIP_TEXT_FOR_FONT_SIZE_DECREASE);

    Gtk.Box textSizeBox = new Gtk.Box(Orientation.HORIZONTAL, BookwormApp.Constants.SPACING_BUTTONS);
    textSizeBox.pack_start(textSmallerButton, false, false);
    textSizeBox.pack_end(textLargerButton, false, false);
    textSizeBox.set_halign(Gtk.Align.CENTER);

    Gtk.Image day_profile_image = new Gtk.Image ();
    day_profile_image.set_from_file (Constants.DAY_PROFILE_IMAGE_LOCATION);
    Gtk.Button dayProfileButton = new Gtk.Button();
    dayProfileButton.set_image (day_profile_image);
    dayProfileButton.set_halign(Gtk.Align.START);
    dayProfileButton.set_relief (ReliefStyle.NONE);
    dayProfileButton.set_tooltip_markup (BookwormApp.Constants.TOOLTIP_TEXT_FOR_LIGHT_MODE);

    Gtk.Image sepia_profile_image = new Gtk.Image ();
    sepia_profile_image.set_from_file (Constants.SEPIA_PROFILE_IMAGE_LOCATION);
    Gtk.Button sepiaProfileButton = new Gtk.Button();
    sepiaProfileButton.set_image (sepia_profile_image);
    sepiaProfileButton.set_halign(Gtk.Align.START);
    sepiaProfileButton.set_relief (ReliefStyle.NONE);
    sepiaProfileButton.set_tooltip_markup (BookwormApp.Constants.TOOLTIP_TEXT_FOR_SEPIA_MODE);

    Gtk.Image night_profile_image = new Gtk.Image ();
    night_profile_image.set_from_file (Constants.NIGHT_PROFILE_IMAGE_LOCATION);
    Gtk.Button nightProfileButton = new Gtk.Button();
    nightProfileButton.set_image (night_profile_image);
    nightProfileButton.set_halign(Gtk.Align.END);
    nightProfileButton.set_relief (ReliefStyle.NONE);
    nightProfileButton.set_tooltip_markup (BookwormApp.Constants.TOOLTIP_TEXT_FOR_DARK_MODE);

    Gtk.Box profileBox = new Gtk.Box(Orientation.HORIZONTAL, BookwormApp.Constants.SPACING_BUTTONS);
    profileBox.pack_start(dayProfileButton, false, false);
    profileBox.pack_start(sepiaProfileButton, false, false);
    profileBox.pack_end(nightProfileButton, false, false);
    profileBox.set_halign(Gtk.Align.CENTER);

    Gtk.Image icon_width_indent_less = new Gtk.Image ();
    icon_width_indent_less.set_from_file (Constants.LESS_LINE_WIDTH_IMAGE_LOCATION);
    Gtk.Button marginDecreaseButton = new Gtk.Button();
    marginDecreaseButton.set_image (icon_width_indent_less);
    marginDecreaseButton.set_halign(Gtk.Align.START);
    marginDecreaseButton.set_relief (ReliefStyle.NONE);
    marginDecreaseButton.set_tooltip_markup (BookwormApp.Constants.TOOLTIP_TEXT_FOR_LINE_WIDTH_DECREASE);

    Gtk.Image icon_width_indent_more = new Gtk.Image ();
    icon_width_indent_more.set_from_file (Constants.MORE_LINE_WIDTH_IMAGE_LOCATION);
    Gtk.Button marginIncreaseButton = new Gtk.Button();
    marginIncreaseButton.set_image (icon_width_indent_more);
    marginIncreaseButton.set_halign(Gtk.Align.END);
    marginIncreaseButton.set_relief (ReliefStyle.NONE);
    marginIncreaseButton.set_tooltip_markup (BookwormApp.Constants.TOOLTIP_TEXT_FOR_LINE_WIDTH_INCREASE);

    Gtk.Box marginBox = new Gtk.Box(Orientation.HORIZONTAL, BookwormApp.Constants.SPACING_BUTTONS);
    marginBox.pack_start(marginIncreaseButton, false, false);
    marginBox.pack_end(marginDecreaseButton, false, false);
    marginBox.set_halign(Gtk.Align.CENTER);

    Gtk.Image icon_line_height_less = new Gtk.Image ();
    icon_line_height_less.set_from_file (Constants.LESS_LINE_HEIGHT_IMAGE_LOCATION);
    Gtk.Button heightDecreaseButton = new Gtk.Button();
    heightDecreaseButton.set_image (icon_line_height_less);
    heightDecreaseButton.set_halign(Gtk.Align.START);
    heightDecreaseButton.set_relief (ReliefStyle.NONE);
    heightDecreaseButton.set_tooltip_markup (BookwormApp.Constants.TOOLTIP_TEXT_FOR_LINE_HEIGHT_DECREASE);

    Gtk.Image icon_line_height_more = new Gtk.Image ();
    icon_line_height_more.set_from_file (Constants.MORE_LINE_HEIGHT_IMAGE_LOCATION);
    Gtk.Button heightIncreaseButton = new Gtk.Button();
    heightIncreaseButton.set_image (icon_line_height_more);
    heightIncreaseButton.set_halign(Gtk.Align.START);
    heightIncreaseButton.set_relief (ReliefStyle.NONE);
    heightIncreaseButton.set_tooltip_markup (BookwormApp.Constants.TOOLTIP_TEXT_FOR_LINE_HEIGHT_INCREASE);

    Gtk.Box lineHeightBox = new Gtk.Box(Orientation.HORIZONTAL, BookwormApp.Constants.SPACING_BUTTONS);
    lineHeightBox.pack_start(heightIncreaseButton, false, false);
    lineHeightBox.pack_end(heightDecreaseButton, false, false);
    lineHeightBox.set_halign(Gtk.Align.CENTER);

    Gtk.Box prefBox = new Gtk.Box(Orientation.VERTICAL, BookwormApp.Constants.SPACING_BUTTONS);
    prefBox.set_border_width(BookwormApp.Constants.SPACING_WIDGETS);
    prefBox.pack_start(textSizeBox, false, false);
    prefBox.pack_start(new Gtk.HSeparator() , true, true, 0);
    prefBox.pack_start(marginBox, false, false);
    prefBox.pack_start(new Gtk.HSeparator() , true, true, 0);
    prefBox.pack_start(lineHeightBox, false, false);
    prefBox.pack_start(new Gtk.HSeparator() , true, true, 0);
    prefBox.pack_start(profileBox, false, false);

    prefPopover.add(prefBox);

    //Add actions to Popover menu
    textLargerButton.clicked.connect (() => {
      BookwormApp.AppWindow.aWebView.set_zoom_level (BookwormApp.AppWindow.aWebView.get_zoom_level() + BookwormApp.Constants.ZOOM_CHANGE_VALUE);
    });

    textSmallerButton.clicked.connect (() => {
      BookwormApp.AppWindow.aWebView.set_zoom_level (BookwormApp.AppWindow.aWebView.get_zoom_level() - BookwormApp.Constants.ZOOM_CHANGE_VALUE);
    });

    dayProfileButton.clicked.connect (() => {
      BookwormApp.Bookworm.applyProfile(BookwormApp.Constants.BOOKWORM_READING_MODE[0]);
      //call the rendered page if UI State is in reading mode
      if(BookwormApp.Bookworm.BOOKWORM_CURRENT_STATE == BookwormApp.Constants.BOOKWORM_UI_STATES[1]){
        BookwormApp.Book currentBookForViewChange = BookwormApp.Bookworm.libraryViewMap.get(BookwormApp.Bookworm.locationOfEBookCurrentlyRead);
        currentBookForViewChange = BookwormApp.Bookworm.renderPage(BookwormApp.Bookworm.libraryViewMap.get(BookwormApp.Bookworm.locationOfEBookCurrentlyRead), "");
        BookwormApp.Bookworm.libraryViewMap.set(BookwormApp.Bookworm.locationOfEBookCurrentlyRead, currentBookForViewChange);
      }
    });

    sepiaProfileButton.clicked.connect (() => {
      BookwormApp.Bookworm.applyProfile(BookwormApp.Constants.BOOKWORM_READING_MODE[1]);
      //call the rendered page if UI State is in reading mode
      if(BookwormApp.Bookworm.BOOKWORM_CURRENT_STATE == BookwormApp.Constants.BOOKWORM_UI_STATES[1]){
        BookwormApp.Book currentBookForViewChange = BookwormApp.Bookworm.libraryViewMap.get(BookwormApp.Bookworm.locationOfEBookCurrentlyRead);
        currentBookForViewChange = BookwormApp.Bookworm.renderPage(BookwormApp.Bookworm.libraryViewMap.get(BookwormApp.Bookworm.locationOfEBookCurrentlyRead), "");
        BookwormApp.Bookworm.libraryViewMap.set(BookwormApp.Bookworm.locationOfEBookCurrentlyRead, currentBookForViewChange);
      }
    });

    nightProfileButton.clicked.connect (() => {
      BookwormApp.Bookworm.applyProfile(BookwormApp.Constants.BOOKWORM_READING_MODE[2]);
      //call the rendered page if UI State is in reading mode
      if(BookwormApp.Bookworm.BOOKWORM_CURRENT_STATE == BookwormApp.Constants.BOOKWORM_UI_STATES[1]){
        BookwormApp.Book currentBookForViewChange = BookwormApp.Bookworm.libraryViewMap.get(BookwormApp.Bookworm.locationOfEBookCurrentlyRead);
        currentBookForViewChange = BookwormApp.Bookworm.renderPage(BookwormApp.Bookworm.libraryViewMap.get(BookwormApp.Bookworm.locationOfEBookCurrentlyRead), "");
        BookwormApp.Bookworm.libraryViewMap.set(BookwormApp.Bookworm.locationOfEBookCurrentlyRead, currentBookForViewChange);
      }
    });

    marginDecreaseButton.clicked.connect (() => {
      if(BookwormApp.Bookworm.settings.reading_width.to_int() <= 40){
        BookwormApp.Bookworm.settings.reading_width = (BookwormApp.Bookworm.settings.reading_width.to_int() + BookwormApp.Constants.MARGIN_CHANGE_VALUE).to_string();
        if(BookwormApp.Bookworm.BOOKWORM_CURRENT_STATE == BookwormApp.Constants.BOOKWORM_UI_STATES[1]){
          BookwormApp.Book currentBookForMarginIncrease = BookwormApp.Bookworm.libraryViewMap.get(BookwormApp.Bookworm.locationOfEBookCurrentlyRead);
          currentBookForMarginIncrease = BookwormApp.Bookworm.renderPage(BookwormApp.Bookworm.libraryViewMap.get(BookwormApp.Bookworm.locationOfEBookCurrentlyRead), "");
          BookwormApp.Bookworm.libraryViewMap.set(BookwormApp.Bookworm.locationOfEBookCurrentlyRead, currentBookForMarginIncrease);
        }
      }
    });

    marginIncreaseButton.clicked.connect (() => {
      if(BookwormApp.Bookworm.settings.reading_width.to_int() >= 1){
        BookwormApp.Bookworm.settings.reading_width = (BookwormApp.Bookworm.settings.reading_width.to_int() - BookwormApp.Constants.MARGIN_CHANGE_VALUE).to_string();
        if(BookwormApp.Bookworm.BOOKWORM_CURRENT_STATE == BookwormApp.Constants.BOOKWORM_UI_STATES[1]){
          BookwormApp.Book currentBookForMarginDecrease = BookwormApp.Bookworm.libraryViewMap.get(BookwormApp.Bookworm.locationOfEBookCurrentlyRead);
          currentBookForMarginDecrease = BookwormApp.Bookworm.renderPage(BookwormApp.Bookworm.libraryViewMap.get(BookwormApp.Bookworm.locationOfEBookCurrentlyRead), "");
          BookwormApp.Bookworm.libraryViewMap.set(BookwormApp.Bookworm.locationOfEBookCurrentlyRead, currentBookForMarginDecrease);
        }
      }
    });

    heightDecreaseButton.clicked.connect (() => {
      if(BookwormApp.Bookworm.settings.reading_line_height.to_int() >= 100){
        BookwormApp.Bookworm.settings.reading_line_height = (BookwormApp.Bookworm.settings.reading_line_height.to_int() - BookwormApp.Constants.LINE_HEIGHT_CHANGE_VALUE).to_string();
        if(BookwormApp.Bookworm.BOOKWORM_CURRENT_STATE == BookwormApp.Constants.BOOKWORM_UI_STATES[1]){
          BookwormApp.Book currentBookForLineHeightDecrease = BookwormApp.Bookworm.libraryViewMap.get(BookwormApp.Bookworm.locationOfEBookCurrentlyRead);
          currentBookForLineHeightDecrease = BookwormApp.Bookworm.renderPage(BookwormApp.Bookworm.libraryViewMap.get(BookwormApp.Bookworm.locationOfEBookCurrentlyRead), "");
          BookwormApp.Bookworm.libraryViewMap.set(BookwormApp.Bookworm.locationOfEBookCurrentlyRead, currentBookForLineHeightDecrease);
        }
      }
    });

    heightIncreaseButton.clicked.connect (() => {
      if(BookwormApp.Bookworm.settings.reading_line_height.to_int() <= 500){
        BookwormApp.Bookworm.settings.reading_line_height = (BookwormApp.Bookworm.settings.reading_line_height.to_int() + BookwormApp.Constants.LINE_HEIGHT_CHANGE_VALUE).to_string();
        if(BookwormApp.Bookworm.BOOKWORM_CURRENT_STATE == BookwormApp.Constants.BOOKWORM_UI_STATES[1]){
          BookwormApp.Book currentBookForLineHeightIncrease = BookwormApp.Bookworm.libraryViewMap.get(BookwormApp.Bookworm.locationOfEBookCurrentlyRead);
          currentBookForLineHeightIncrease = BookwormApp.Bookworm.renderPage(BookwormApp.Bookworm.libraryViewMap.get(BookwormApp.Bookworm.locationOfEBookCurrentlyRead), "");
          BookwormApp.Bookworm.libraryViewMap.set(BookwormApp.Bookworm.locationOfEBookCurrentlyRead, currentBookForLineHeightIncrease);
        }
      }
    });

    return prefPopover;
  }
}