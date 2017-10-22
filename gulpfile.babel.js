'use strict';

import gulp from "gulp";
import babel from "gulp-babel";
import postcss from "gulp-postcss";
import cssImport from "postcss-import";
import cssnext from "postcss-cssnext";
import cssnano from "cssnano";
import minify from 'gulp-minify';

gulp.task("build", ["css", "js"]);

gulp.task("css", () => (
  gulp.src("craft/assets/css/*.css")
    .pipe(postcss([
      cssImport({from: "craft/assets/css/main.css"}),
      cssnext(),
      cssnano(),
    ]))
    .pipe(gulp.dest("./public_html/assets/css"))
));


gulp.task('js', function() {
 gulp.src("craft/assets/js/*.js")
  //  .pipe(minify({
  //      ext:{
  //          min:'.min.js'
  //      },
  //      noSource: true,
  //  }))
  .pipe(babel())
  .pipe(gulp.dest("./public_html/assets/js"))
});

gulp.task("server", ["css", "js"], () => {
  gulp.watch("craft/assets/css/**/*.css", ["css"]);
  gulp.watch("craft/assets/js/**/*.js", ["js"]);
});
