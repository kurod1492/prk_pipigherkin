# Initialize a Keyboard
kbd = Keyboard.new

# Initialize GPIO assign
kbd.init_pins(
  #[ 8, 9, 10, 11, 12 ], # row0, row1,... respectively
  #[ 2, 3, 4, 5, 6, 7 ]  # col0, col1,... respectively
  # If you put USB port on the right side, use below instead
  [ 12, 11, 10, 9, 8 ],
  [ 7, 6, 5, 4, 3, 2 ]
)

# default layer should be added at first
kbd.add_layer :default, %i(
  KC_Q      KC_W      KC_E      KC_R       KC_T       KC_Y       KC_U      KC_I      KC_O      KC_P
  A_LCTL    KC_S      KC_D      KC_F       KC_G       KC_H       KC_J      KC_K      KC_L      MINS_RCTL
  Z_LSFT    X_LCTL    C_LALT    V_LGUI     SPC_LOWER  ENT_RAISE  B_RGUI    N_RALT    M_RCTL    BS_RSFT
)
kbd.add_layer :lower, %i(
  KC_1      KC_2      KC_3      KC_4      KC_5       KC_6       KC_7      KC_8      KC_9      KC_0
  KC_TAB    KC_GRAVE  KC_BSLS   KC_SCOLON KC_QUOTE   KC_COMMA   KC_DOT    KC_SLASH  KC_LBRC   KC_RBRC
  UNDO      CUT       COPY      PASTE     LOWER      CMD_ENT    KC_RGUI   KC_RALT   KC_RCTL   KC_RSFT
)
kbd.add_layer :raise, %i(
  KC_EXLM   KC_AT     KC_HASH   KC_DLR    KC_PERC    KC_CIRC    KC_AMPR   KC_ASTER  KC_LPRN   KC_RPRN
  KC_ESCAPE KC_LABK   KC_RABK   KC_COLON  KC_TILD    KC_LEFT    KC_DOWN   KC_UP     KC_RIGHT  KC_EQUAL
  KC_LSFT   KC_LCTL   KC_LALT   KC_LGUI   ADJUST     RAISE      KC_RGUI   KC_RALT   KC_RCTL   KC_RSFT
)
kbd.add_layer :adjust, %i(
  KC_F1     KC_F2     KC_F3     KC_F4     KC_F5      KC_F6      KC_F7     KC_F8     KC_F9     KC_F10
  KC_F11    KC_F12    NONE      NONE      NONE       KC_LEFT    KC_DOWN   KC_UP     KC_RIGHT  KC_EQUAL
  KC_LANG1  CTL_TAB   NONE      BOOTSEL   UNLOCK     UNLOCK     KC_RGUI   KC_RALT   KC_RCTL   KC_RSFT
)
#
#                   Your custom    Keycode or                          Keycode (only modifiers)    Release time     Re-push time
#                   key name       Array of Keycode                    or Layer Symbol to be held  threshold(ms)    threshold(ms)
#                                  or Proc                             or Proc which will run      to consider as   to consider as
#                                  when you click                      while you keep press        `click the key`  `hold the key`
kbd.define_mode_key :Z_LSFT,    [ :KC_Z,                               :KC_LSFT,                   200,             200 ]
kbd.define_mode_key :Z_LCTL,    [ :KC_Z,                               :KC_LCTL,                   200,             200 ]
kbd.define_mode_key :X_LCTL,    [ :KC_X,                               :KC_LCTL,                   200,             200 ]
kbd.define_mode_key :X_LSFT,    [ :KC_X,                               :KC_LSFT,                   200,             200 ]
kbd.define_mode_key :X_LALT,    [ :KC_X,                               :KC_LALT,                   200,             200 ]
kbd.define_mode_key :X_LGUI,    [ :KC_X,                               :KC_LGUI,                   200,             200 ]
kbd.define_mode_key :C_LALT,    [ :KC_C,                               :KC_LALT,                   200,             200 ]
kbd.define_mode_key :C_LGUI,    [ :KC_C,                               :KC_LGUI,                   200,             200 ]
kbd.define_mode_key :V_LGUI,    [ :KC_V,                               :KC_LGUI,                   200,             200 ]
kbd.define_mode_key :V_LCTL,    [ :KC_V,                               :KC_LCTL,                   200,             200 ]
kbd.define_mode_key :A_LCTL,    [ :KC_A,                               :KC_LCTL,                   200,             200 ]
kbd.define_mode_key :B_RGUI,    [ :KC_B,                               :KC_RGUI,                   200,             200 ]
kbd.define_mode_key :B_RCTL,    [ :KC_B,                               :KC_RCTL,                   200,             200 ]
kbd.define_mode_key :B_RAISE,   [ :KC_B,                               :raise,                     200,             200 ]
kbd.define_mode_key :N_RALT,    [ :KC_N,                               :KC_RALT,                   200,             200 ]
kbd.define_mode_key :M_RCTL,    [ :KC_M,                               :KC_RCTL,                   200,             200 ]
kbd.define_mode_key :M_RGUI,    [ :KC_M,                               :KC_RGUI,                   200,             200 ]
kbd.define_mode_key :M_RSFT,    [ :KC_M,                               :KC_RSFT,                   200,             200 ]
kbd.define_mode_key :MINS_RSFT, [ :KC_MINUS,                           :KC_RSFT,                   200,             200 ]
kbd.define_mode_key :MINS_RCTL, [ :KC_MINUS,                           :KC_RCTL,                   200,             200 ]
kbd.define_mode_key :SLAS_RSFT, [ :KC_SLASH,                           :KC_RSFT,                   200,             200 ]
kbd.define_mode_key :COLN_RSFT, [ :KC_COLON,                           :KC_RSFT,                   200,             200 ]
kbd.define_mode_key :UNDS_RSFT, [ :KC_UNDS,                            :KC_RSFT,                   200,             200 ]
kbd.define_mode_key :ENT_RAISE, [ :KC_ENTER,                           :raise,                     200,             200 ]
kbd.define_mode_key :ENT_RCTL,  [ :KC_ENTER,                           :KC_RCTL,                   200,             200 ]
kbd.define_mode_key :ENT_RSFT,  [ :KC_ENTER,                           :KC_RSFT,                   200,             200 ]
kbd.define_mode_key :BS_RAISE,  [ :KC_BSPACE,                          :raise,                     200,             200 ]
kbd.define_mode_key :BS_RCTL,   [ :KC_BSPACE,                          :KC_RCTL,                   200,             200 ]
kbd.define_mode_key :BS_RSFT,   [ :KC_BSPACE,                          :KC_RSFT,                   200,             200 ]
kbd.define_mode_key :SPC_LOWER, [ :KC_SPACE,                           :lower,                     200,             200 ]
kbd.define_mode_key :ADJUST,    [ Proc.new { kbd.lock_layer :adjust }, :KC_LSFT,                   200,             nil ]
kbd.define_mode_key :UNLOCK,    [ Proc.new { kbd.unlock_layer },       :KC_LSFT,                   200,             nil ]
kbd.define_mode_key :BOOTSEL,   [ Proc.new { kbd.bootsel! },           nil,                        200,             nil ]

kbd.define_composite_key :CUT,       %i(KC_LGUI KC_X)
kbd.define_composite_key :COPY,      %i(KC_LGUI KC_C)
kbd.define_composite_key :PASTE,     %i(KC_LGUI KC_V)
kbd.define_composite_key :UNDO,      %i(KC_LGUI KC_Z)
kbd.define_composite_key :SELECTALL, %i(KC_LGUI KC_A)
kbd.define_composite_key :CMD_ENT,   %i(KC_LGUI KC_ENTER)
kbd.define_composite_key :CTL_TAB,   %i(KC_LCTL KC_TAB)

# Tip: You can also switch current layer by single click like this:
#   kbd.define_mode_key :RAISE, [ Proc.new { kbd.raise_layer }, :KC_LSFT, 200, nil ]
#   kbd.define_mode_key :LOWER, [ Proc.new { kbd.lower_layer }, :KC_LSFT, 200, nil ]

kbd.start!
