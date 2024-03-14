if (keyboard_check(vk_right)) size += 0.0001;
if (keyboard_check(vk_left)) size -= 0.0001;
if (keyboard_check(vk_up)) strength += 0.0001;
if (keyboard_check(vk_down)) strength -= 0.0001;

gpu_set_texfilter(true);

shader_set(shd_emboss);
var uniform_resolution = shader_get_uniform(shd_emboss, "resolution");
var uniform_strength = shader_get_uniform(shd_emboss, "strength");
var uniform_size = shader_get_uniform(shd_emboss, "size");
shader_set_uniform_f(uniform_resolution, sprite_get_width(images[index]), sprite_get_height(images[index]));
shader_set_uniform_f(uniform_strength, strength);
shader_set_uniform_f(uniform_size, size);
draw_sprite(images[index], 0, 0, 0);
shader_reset();

draw_rectangle_colour(0, 0, 400, 88, c_white, c_white, c_white, c_white, false);
draw_text_colour(32, 12, $"FPS: {fps}", c_black, c_black, c_black, c_black, 1);
draw_text_colour(32, 28, $"Strength: {strength}", c_black, c_black, c_black, c_black, 1);
draw_text_colour(32, 44, $"Size: {size}", c_black, c_black, c_black, c_black, 1);