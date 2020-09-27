export PATH := bin:$(PATH)

run:
	hugo server

clean:
	rm -rf public

build: clean
	hugo

fig_file_path := ai/recommend_system/architecture
fig_parent_path := $(dir $(fig_file_path))
fig_file_type := webp

generate_fig:
	mkdir -p static/fig/${fig_parent_path}
	dot content/docs/${fig_file_path}.gv -T$(fig_file_type) -o static/fig/${fig_file_path}.$(fig_file_type)
