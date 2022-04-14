set(srcs "main.c" "app_mqtt.c"
        "board.c")

idf_component_register(SRCS "${srcs}"
                    INCLUDE_DIRS  ".")
