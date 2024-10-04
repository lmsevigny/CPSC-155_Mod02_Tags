#!/bin/bash

function append_to_default_file_and_commit()
{
    local content_and_commit_message=$@

    echo "$content_and_commit_message" >> index.html
    
    git commit -a -m "$content_and_commit_message"
}

append_to_default_file_and_commit new changes
append_to_default_file_and_commit minor release 1.1
append_to_default_file_and_commit patch release 1.1.1
append_to_default_file_and_commit urgent changes
append_to_default_file_and_commit more changes
append_to_default_file_and_commit second major release 2.0

git tag v1.1 HEAD~4
git tag v1.1.1-patch HEAD~3
git tag hotfix HEAD~2
git tag -a v2.0 -m "Annotated tag for second major release 2.0" HEAD

echo "$0 completed!"
