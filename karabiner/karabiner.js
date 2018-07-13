/*
 Credit: github.com/wincent
  Format with: prettier --write karabiner.js
 */

function fromTo(from, to) {
  return [
    {
      from: {
        key_code: from
      },
      to: {
        key_code: to
      }
    }
  ];
}

function spaceFN(from, to) {
  return [
    {
      from: {
        modifiers: {
          optional: ["any"]
        },
        simultaneous: [
          {
            key_code: "spacebar"
          },
          {
            key_code: from
          }
        ],
        simultaneous_options: {
          key_down_order: "strict",
          key_up_order: "strict_inverse",
          to_after_key_up: [
            {
              set_variable: {
                name: "SpaceFN",
                value: 0
              }
            }
          ]
        }
      },
      parameters: {
        "basic.simultaneous_threshold_milliseconds": 500 /* Default: 1000 */
      },
      to: [
        {
          set_variable: {
            name: "SpaceFN",
            value: 1
          }
        },
        {
          key_code: to
        }
      ],
      type: "basic"
    },
    {
      conditions: [
        {
          name: "SpaceFN",
          type: "variable_if",
          value: 1
        }
      ],
      from: {
        key_code: from,
        modifiers: {
          optional: ["any"]
        }
      },
      to: [
        {
          key_code: to
        }
      ],
      type: "basic"
    }
  ];
}

function swap(a, b) {
  return [...fromTo(a, b), ...fromTo(b, a)];
}

const DEVICE_DEFAULTS = {
  disable_built_in_keyboard_if_exists: false,
  fn_function_keys: [],
  ignore: false,
  manipulate_caps_lock_led: true,
  simple_modifications: []
};

const IDENTIFIER_DEFAULTS = {
  is_keyboard: true,
  is_pointing_device: false
};

const APPLE_INTERNAL = {
  ...DEVICE_DEFAULTS,
  identifiers: {
    ...IDENTIFIER_DEFAULTS,
    product_id: 627,
    vendor_id: 1452
  }
};

const LOGITECH = {
  ...DEVICE_DEFAULTS,
  identifiers: {
    ...IDENTIFIER_DEFAULTS,
    product_id: 50478,
    vendor_id: 1133
  },
  simple_modifications: [
    ...fromTo("left_gui", "left_option"),
    ...fromTo("left_alt", "left_command")
  ]
};

const PARAMETER_DEFAULTS = {
  "basic.simultaneous_threshold_milliseconds": 50,
  "basic.to_delayed_action_delay_milliseconds": 500,
  "basic.to_if_alone_timeout_milliseconds": 1000,
  "basic.to_if_held_down_threshold_milliseconds": 500
};

const VANILLA_PROFILE = {
  complex_modifications: {
    parameters: PARAMETER_DEFAULTS,
    rules: []
  },
  devices: [],
  fn_function_keys: [
    ...fromTo("f1", "display_brightness_decrement"),
    ...fromTo("f2", "display_brightness_increment"),
    ...fromTo("f3", "mission_control"),
    ...fromTo("f4", "launchpad"),
    ...fromTo("f5", "illumination_decrement"),
    ...fromTo("f6", "illumination_increment"),
    ...fromTo("f7", "rewind"),
    ...fromTo("f8", "play_or_pause"),
    ...fromTo("f9", "fastforward"),
    ...fromTo("f10", "mute"),
    ...fromTo("f11", "volume_decrement"),
    ...fromTo("f12", "volume_increment")
  ],
  name: "Vanilla",
  selected: false,
  simple_modifications: [],
  virtual_hid_keyboard: {
    caps_lock_delay_milliseconds: 0,
    keyboard_type: "ansi"
  }
};

const DEFAULT_PROFILE = {
  ...VANILLA_PROFILE,
  complex_modifications: {
    parameters: {
      ...PARAMETER_DEFAULTS,
      "basic.to_if_alone_timeout_milliseconds": 500 /* Default: 1000 */
    },
    rules: [
      {
        description: "SpaceFN layer",
        manipulators: [
          ...spaceFN("b", "spacebar"),
          ...spaceFN("h", "left_arrow"),
          ...spaceFN("l", "right_arrow"),
          ...spaceFN("k", "down_arrow"),
          ...spaceFN("j", "up_arrow")
        ]
      },

      {
        description: `custom change

          `,
        manipulators: [
          {
            description:
              "Change caps_lock to control when used as modifier, escape when used alone",
            from: {
              key_code: "caps_lock",
              modifiers: {
                optional: ["any"]
              }
            },
            parameters: {
              basic: {
                to_if_alone_timeout_milliseconds: 200
              }
            },
            to: [
              {
                key_code: "left_control",
                modifiers: ["left_command", "left_shift", "left_option"]
              }
            ],
            to_if_alone: [
              {
                key_code: "escape",
                modifiers: {
                  optional: ["any"]
                }
              }
            ],
            type: "basic"
          },
          {
            description:
              "Change return to control when used as modifier, return when used alone",
            from: {
              key_code: "return_or_enter",
              modifiers: {
                optional: ["any"]
              }
            },
            parameters: {
              basic: {
                to_if_alone_timeout_milliseconds: 500
              }
            },
            to: [
              {
                key_code: "right_control"
              }
            ],
            to_if_alone: [
              {
                key_code: "return_or_enter",
                modifiers: {
                  optional: ["any"]
                }
              }
            ],
            type: "basic"
          },
          {
            description: "Left and Right Shift together -> Caps Lock",
            from: {
              key_code: "right_shift",
              modifiers: {
                mandatory: ["left_shift"],
                optional: ["any"]
              }
            },
            to: [
              {
                key_code: "caps_lock"
              }
            ],
            type: "basic"
          },
          {
            description: "Right and Left Shift together -> Caps Lock",
            from: {
              key_code: "left_shift",
              modifiers: {
                mandatory: ["right_shift"],
                optional: ["any"]
              }
            },
            to: [
              {
                key_code: "caps_lock"
              }
            ],
            type: "basic"
          }
        ]
      }
    ]
  },
  devices: [LOGITECH, APPLE_INTERNAL],
  name: "Default",
  selected: true
};

process.stdout.write(
  JSON.stringify(
    {
      global: {
        check_for_updates_on_startup: true,
        show_in_menu_bar: true,
        show_profile_name_in_menu_bar: false
      },
      profiles: [DEFAULT_PROFILE, VANILLA_PROFILE]
    },
    null,
    2
  ) + "\n"
);
