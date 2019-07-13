
if !shader_is_compiled(sh_shader) show_message("Your hardware doesn\'t support shader - trackershader");

sampler = shader_get_sampler_index(sh_shader, "s_normalMap");
show_debug_message("Sampler is " + string(sampler));
