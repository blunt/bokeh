import CMS from "netlify-cms";

// Quote Module
CMS.registerEditorComponent({
  id: "quote",
  label: "Quote",
  fields: [{name: 'quote', label: 'Quote', widget: 'string'}, {name: 'name', label: 'Name', widget: 'string'}, {name: 'jobTitle', label: 'Job Title', widget: 'string'}],
  pattern: /quote (\S+)\s/,
  fromBlock: function(match) {
    return {
      id: match[1]
    };
  },
  toBlock: function(obj) {
    return (
      `<blockquote>
        <h2>${obj.quote}</h2>
        <p>${obj.name}, ${obj.jobTitle}</p>
      </blockquote>`
    );
  },
  toPreview: function(obj) {
    return (
      `<blockquote>
        <h2>${obj.quote}</h2>
        <p>${obj.name}, ${obj.jobTitle}</p>
      </blockquote>`
    );
  }
});

// Single Video Module
CMS.registerEditorComponent({
  id: "single_video",
  label: "Single Video",
  fields: [{name: 'id', label: 'Vimeo Video ID', widget: 'string'}, {name: 'caption', label: 'Caption', widget: 'string', required: false}],
  pattern: /youtube (\S+)\s/,
  fromBlock: function(match) {
    return {
      id: match[1]
    };
  },
  toBlock: function(obj) {
    return (
      `<div class="contained">
        <div class="video-wrapper relative">
          <iframe class="hp-video absolute top-0 left-0 w-100 h-100" src="https://player.vimeo.com/video/${obj.id}" width="640" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
        </div><p class="caption">${obj.caption}</p>
      </div>`
    );
  },
  toPreview: function(obj) {
    return (
      `<p>${obj.id} - ${obj.caption}</p>`
    );
  }
});

// Video Carousel Module
CMS.registerEditorComponent({
  id: "video_carousel",
  label: "Video Carousel",
  fields: [{name: 'videoCarousel', label: 'Video', widget: 'list', fields: [
    {name: 'id', label: 'Vimeo Video ID', widget: 'string'},
    {name: 'caption', label: 'Caption', widget: 'string', required: false}
  ]}],
  pattern: /video_carousel (\S+)\s/,
  fromBlock: function(match) {
    return {
      id: match[1]
    };
  },
  toBlock: function(obj) {
    const videos = obj.videoCarousel.map((video, i) => {
      return (
        `<div class="swiper-slide"><div class="video-wrapper relative">
          <iframe class="hp-video absolute top-0 left-0 w-100 h-100" src="https://player.vimeo.com/video/${video.id}" width="640" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
        </div>
        <p class="caption">${video.caption}</p>`
      )
    });

    return (
      `<div class="article-swiper-container swiper-container">
        <div class="swiper-wrapper">
            ${videos.join('')}
        </div>
      </div>`
    );
  },
  toPreview: function(obj) {
    return (`<div>VIDEO CAROUSEL - DUNNO WHAT TO PUT HERE.</div>`);
  }
});

// Full Width Image Module
CMS.registerEditorComponent({
  id: "full_width_image",
  label: "Full Width Image",
  fields: [{name: 'image', label: 'Image', widget: 'image'}, {name: 'alt', label: 'Alt text', widget: 'string'}, {name: 'caption', label: 'Caption', widget: 'string', required: false}],
  pattern: /full_width_image (\S+)\s/,
  fromBlock: function(match) {
    return {
      id: match[1]
    };
  },
  toBlock: function(obj) {
    return (
      `<div class="full"><img src="${obj.image}" alt="${obj.alt}"></div>
      <p class="caption">${obj.caption}</p>`
    );
  },
  toPreview: function(obj) {
    return (
      `<div class="full"><img src="${obj.image}" alt="${obj.alt}"></div>
      <p class="caption">${obj.caption}</p>`
    );
  }
});

// 2-up Module
CMS.registerEditorComponent({
  id: "two_up",
  label: "Two-Up Images",
  fields: [{name: 'imageOne', label: 'First Image', widget: 'object', fields: [
    {name: 'image', label: 'Image (712px by 400px)', widget: 'image'},
    {name: 'alt', label: 'Alt text', widget: 'string'}
  ]}, {name: 'imageTwo', label: 'Second Image', widget: 'object', fields: [
    {name: 'image', label: 'Image (712px by 400px)', widget: 'image'},
    {name: 'alt', label: 'Alt text', widget: 'string'}
  ]}],
  pattern: /two_up (\S+)\s/,
  fromBlock: function(match) {
    return {
      id: match[1]
    };
  },
  toBlock: function(obj) {
    return (
      `<div class="two-up image-grid">
        <div class="image">
          <img src="${obj.imageOne.image}" alt="${obj.imageOne.alt}">
        </div>
        <div class="image">
          <img src="${obj.imageTwo.image}" alt="${obj.imageTwo.alt}">
        </div>
      </div>`
    );
  },
  toPreview: function(obj) {
    return (
      `<div class="two-up image-grid">
        <div class="image">
          <img src="${obj.imageOne.image}" alt="${obj.imageOne.alt}">
        </div>
        <div class="image">
          <img src="${obj.imageTwo.image}" alt="${obj.imageTwo.alt}">
        </div>
      </div>`
    );
  }
});

// 3-up Module
CMS.registerEditorComponent({
  id: "three_up",
  label: "Three-Up Images",
  fields: [{name: 'imageOne', label: 'First Image', widget: 'object', fields: [
    {name: 'image', label: 'Image (712px by 820px)', widget: 'image'},
    {name: 'alt', label: 'Alt text', widget: 'string'}
  ]}, {name: 'imageTwo', label: 'Second Image', widget: 'object', fields: [
    {name: 'image', label: 'Image (712px by 400px)', widget: 'image'},
    {name: 'alt', label: 'Alt text', widget: 'string'}
  ]}, {name: 'imageThree', label: 'Third Image', widget: 'object', fields: [
    {name: 'image', label: 'Image (712px by 400px)', widget: 'image'},
    {name: 'alt', label: 'Alt text', widget: 'string'}
  ]}],
  pattern: /three_up (\S+)\s/,
  fromBlock: function(match) {
    return {
      id: match[1]
    };
  },
  toBlock: function(obj) {
    return (
      `<div class="image-grid three-up">
        <div class="image">
          <img src="${obj.imageOne.image}" alt="${obj.imageOne.alt}">
        </div>
        <div class="image">
          <img src="${obj.imageTwo.image}" alt="${obj.imageTwo.alt}">
        </div>
        <div class="image">
          <img src="${obj.imageThree.image}" alt="${obj.imageThree.alt}">
        </div>
      </div>`
    );
  },
  toPreview: function(obj) {
    return (
      `<div class="image-grid three-up">
        <div class="image">
          <img src="${obj.imageOne.image}" alt="${obj.imageOne.alt}">
        </div>
        <div class="image">
          <img src="${obj.imageTwo.image}" alt="${obj.imageTwo.alt}">
        </div>
        <div class="image">
          <img src="${obj.imageThree.image}" alt="${obj.imageThree.alt}">
        </div>
      </div>`
    );
  }
});

// 5-up Module
CMS.registerEditorComponent({
  id: "five_up",
  label: "Five-Up Images",
  fields: [{name: 'imageOne', label: 'First Image', widget: 'object', fields: [
    {name: 'image', label: 'Image (712px by 400px)', widget: 'image'},
    {name: 'alt', label: 'Alt text', widget: 'string'}
  ]}, {name: 'imageTwo', label: 'Second Image', widget: 'object', fields: [
    {name: 'image', label: 'Image (712px by 765px)', widget: 'image'},
    {name: 'alt', label: 'Alt text', widget: 'string'}
  ]}, {name: 'imageThree', label: 'Third Image', widget: 'object', fields: [
    {name: 'image', label: 'Image (712px by 712px)', widget: 'image'},
    {name: 'alt', label: 'Alt text', widget: 'string'}
  ]}, {name: 'imageFour', label: 'Fourth Image', widget: 'object', fields: [
    {name: 'image', label: 'Image (712px by 400px)', widget: 'image'},
    {name: 'alt', label: 'Alt text', widget: 'string'}
  ]}, {name: 'imageFive', label: 'Fifth Image', widget: 'object', fields: [
    {name: 'image', label: 'Image (712px by 765px)', widget: 'image'},
    {name: 'alt', label: 'Alt text', widget: 'string'}
  ]}],
  pattern: /five_up (\S+)\s/,
  fromBlock: function(match) {
    return {
      id: match[1]
    };
  },
  toBlock: function(obj) {
    return (
      `<div class="image-grid five-up">
        <div class="image">
          <img src="${obj.imageOne.image}" alt="${obj.imageOne.alt}">
        </div>
        <div class="image">
          <img src="${obj.imageTwo.image}" alt="${obj.imageTwo.alt}">
        </div>
        <div class="image">
          <img src="${obj.imageThree.image}" alt="${obj.imageThree.alt}">
        </div>
        <div class="image">
          <img src="${obj.imageFour.image}" alt="${obj.imageFour.alt}">
        </div>
        <div class="image">
          <img src="${obj.imageFive.image}" alt="${obj.imageFive.alt}">
        </div>
      </div>`
    );
  },
  toPreview: function(obj) {
    return (
      `<div class="image-grid five-up">
        <div class="image">
          <img src="${obj.imageOne.image}" alt="${obj.imageOne.alt}">
        </div>
        <div class="image">
          <img src="${obj.imageTwo.image}" alt="${obj.imageTwo.alt}">
        </div>
        <div class="image">
          <img src="${obj.imageThree.image}" alt="${obj.imageThree.alt}">
        </div>
        <div class="image">
          <img src="${obj.imageFour.image}" alt="${obj.imageFour.alt}">
        </div>
        <div class="image">
          <img src="${obj.imageFive.image}" alt="${obj.imageFive.alt}">
        </div>
      </div>`
    );
  }
}); 

// Image Carousel Module
CMS.registerEditorComponent({
  id: "image_carousel",
  label: "Image Carousel",
  fields: [{name: 'imageCarousel', label: 'Image', widget: 'list', fields: [
    {name: 'image', label: 'Image', widget: 'image'},
    {name: 'alt', label: 'Alt text', widget: 'string'},
    {name: 'caption', label: 'Caption', widget: 'string', required: false}
  ]}],
  pattern: /image_carousel (\S+)\s/,
  fromBlock: function(match) {
    return {
      id: match[1]
    };
  },
  toBlock: function(obj) {
    const images = obj.imageCarousel.map((image, i) => {
      return (
        `<div class="swiper-slide"><div class="video-wrapper relative">
          <iframe class="hp-video absolute top-0 left-0 w-100 h-100" src="https://player.vimeo.com/video/${image.id}" width="640" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
        </div>
        <p class="caption">${image.caption}</p>`
      )
    });

    return (
      `<div class="article-swiper-container swiper-container">
        <div class="swiper-wrapper">
            ${images.join('')}
        </div>
      </div>`
    );
  },
  toPreview: function(obj) {
    return (`<div>IMAGES CAROUSEL - DUNNO WHAT TO PUT HERE.</div>`);
  }
});

export var ProjectPreview = createClass({
  render: function() {
    var entry = this.props.entry;
    var headingBlurb = entry.getIn(['data', "headingBlurb"]);
    var introBlurb = entry.getIn(['data', "introBlurb"]);
    var image = entry.getIn(['data', 'image']);
    return h('div', {},
      h('header', {"className": "cover pt7 pb6 tc relative", style: {background: `url(${image}) no-repeat center center`}},
        h('div', {"className": "case-study-overlay absolute left-0 top-0 right-0 bottom-0"}),
        h('div', {"className": "mw8 center f-subheadline white lh-title relative"},
          h('h1', {}, headingBlurb)
        )
      ),
      h('div', {"className": "case-study-container mb6"},
        h('div', {"className": "bg-white intro-blurb pt5 pb4 relative"}, introBlurb),
        this.props.widgetFor('body')
      )
    );
  }
});

CMS.registerPreviewTemplate("project", ProjectPreview);

CMS.registerPreviewStyle("/css/main.css");
