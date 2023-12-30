#!/usr/bin/env bash

repositories=(
    "https://github.com/eli64s/readme-ai"
    "https://github.com/Yuberley/ChatGPT-App-React-Native-TypeScript"
    "https://github.com/idosal/assistant-chat-gpt-javascript"
    "https://github.com/rumaan/file.io-Android-Client"
    "https://github.com/DownWithUp/CallMon"
    "https://github.com/olliefr/docker-gs-ping"
    "https://github.com/avjinder/Minimal-Todo"
    "https://github.com/FerrariDG/async-ml-inference"
    "https://github.com/GokuMohandas/mlops-course"
    "https://github.com/eli64s/flink-flow"
)

filenames=(
    "readme-python.md"
    "readme-typescript.md"
    "readme-javascript.md"
    "readme-kotlin.md"
    "readme-rust-c.md"
    "readme-go.md"
    "readme-java.md"
    "readme-fastapi-redis.md"
    "readme-mlops.md"
    "readme-pyflink.md"
)

badge_styles=("flat" "flat-square" "plastic" "for-the-badge" "skills", "skills-light")
image=("black" "blue" "gradient" "purple" "yellow")
align=("left" "center")

for index in "${!repositories[@]}"
do
    repo="${repositories[$index]}"
    filename="${filenames[$index]}"
    random_badge=${badge_styles[$RANDOM % ${#badge_styles[@]}]}
    image_style=${image[$RANDOM % ${#image[@]}]}
    alignment=${align[$RANDOM % ${#align[@]}]}
    rand_choice=$((RANDOM % 2))
    if [ $rand_choice -eq 1 ]; then
        readmeai -o "$filename" -r "$repo" -b "$random_badge" -i "$image_style" -a "$alignment" -e
    else
        readmeai -o "$filename" -r "$repo" -b "$random_badge" -i "$image_style" -a "$alignment"
    fi
done
