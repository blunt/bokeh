'use strict';

import gulp from "gulp";
import postcss from "gulp-postcss";
import cssImport from "postcss-import";
import cssnext from "postcss-cssnext";
import cssnano from "cssnano";

gulp.task("build", ["css"]);

gulp.task("css", () => (
  gulp.src("craft/assets/css/*.css")
    .pipe(postcss([
      cssImport({from: "craft/assets/css/main.css"}),
      cssnext(),
      cssnano(),
    ]))
    .pipe(gulp.dest("./public/assets/css"))
));

gulp.task("server", ["css"], () => {
  gulp.watch("craft/assets/css/**/*.css", ["css"]);
});
