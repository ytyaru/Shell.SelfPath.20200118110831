#!/usr/bin/env bash
Main() {
	local name="answer.sh"
	local file="$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd -P)/$name"
	echo '#!/usr/bin/env bash' > "$file"
	echo 'echo $(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd -P)/$(basename "${BASH_SOURCE:-$0}")' >> "$file"
	chmod 755 "$file"
	Test1() { # カレントディレクトリと同じパスで絶対パス指定
		cd "$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd -P)"
		"$file"
	}
	Test2() { # カレントディレクトリと同じパスで相対パス指定
		cd "$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd -P)"
		./"$name"
	}
	Test3() { # カレントディレクトリの親パスで相対パス指定
		local path="$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd -P)"
		local parent_name="$(basename $path)"
		cd "$(cd "$(dirname "$path")"; pwd -P)"
		"./$parent_name/$name"
	}
	Test4() { # カレントディレクトリの子パスで相対パス指定
		local cur="$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd -P)"
		local child_name="child"
		mkdir -p "$cur/$child_name"
		cd "$cur/$child_name"
		"../$name"
	}
	Test5() { # カレントディレクトリと異なるパスで絶対パス指定
		cd ~
		local cur="$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd -P)"
		"$file"
	}
	Test1
	Test2
	Test3
	Test4
	Test5
}
Main

