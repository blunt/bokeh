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
      `<div className="quote-wrapper">
        <h2>${obj.quote}</h2>
        <p>${obj.name}, ${obj.jobTitle}</p>
      </div>`
    );
  },
  toPreview: function(obj) {
    return (
      `<div className="quote-wrapper">
        <h2>${obj.quote}</h2>
        <p>${obj.name}, ${obj.jobTitle}</p>
      </div>`
    );
  }
});

// Single Video Module
CMS.registerEditorComponent({
  id: "single_video",
  label: "Single Video",
  fields: [{name: 'id', label: 'Youtube Video ID', widget: 'string'}, {name: 'caption', label: 'Caption', widget: 'string'}],
  pattern: /youtube (\S+)\s/,
  fromBlock: function(match) {
    return {
      id: match[1]
    };
  },
  toBlock: function(obj) {
    return (
      `<div className="iframe-wrapper">
        <iframe width="560" height="315" src="https://www.youtube.com/embed/${obj.id}" frameborder="0" allowfullscreen></iframe>
      </div>
      <p className="video-caption">${obj.caption}</p>`
    );
  },
  toPreview: function(obj) {
    return (
      `<img src="http://img.youtube.com/vi/${obj.id}/maxresdefault.jpg" alt="Youtube Video"/>
      <p>${obj.caption}</p>`
    );
  }
});

// Video Carousel Module
CMS.registerEditorComponent({
  id: "video_carousel",
  label: "Video Carousel",
  fields: [{name: 'videoCarousel', label: 'Video', widget: 'list', fields: [
    {name: 'id', label: 'Youtube Video ID', widget: 'string'},
    {name: 'caption', label: 'Caption', widget: 'string'}
  ]}],
  pattern: /video_carousel (\S+)\s/,
  fromBlock: function(match) {
    return {
      id: match[1]
    };
  },
  toBlock: function(obj) {
    return (`<div></div>`);
  },
  toPreview: function(obj) {
    return (`<div></div>`);
  }
});

// Full Width Image Module
CMS.registerEditorComponent({
  id: "full_width_image",
  label: "Full Width Image",
  fields: [{name: 'image', label: 'Image', widget: 'image'}, {name: 'alt', label: 'Alt text', widget: 'string'}],
  pattern: /full_width_image (\S+)\s/,
  fromBlock: function(match) {
    return {
      id: match[1]
    };
  },
  toBlock: function(obj) {
    return (
      `<img src="${obj.image}" alt="${obj.alt}" className="full-width-image" />`
    );
  },
  toPreview: function(obj) {
    return (
      `<img src="${obj.image}" alt="${obj.alt}" className="full-width-image" />`
    );
  }
});

// 2-up Module
CMS.registerEditorComponent({
  id: "two_up",
  label: "Two-Up Images",
  fields: [{name: 'image-one', label: 'First Image', widget: 'object', fields: [
    {name: 'image', label: 'Image', widget: 'image'},
    {name: 'alt', label: 'Alt text', widget: 'string'}
  ]}, {name: 'image-two', label: 'Second Image', widget: 'object', fields: [
    {name: 'image', label: 'Image', widget: 'image'},
    {name: 'alt', label: 'Alt text', widget: 'string'}
  ]}],
  pattern: /two_up (\S+)\s/,
  fromBlock: function(match) {
    return {
      id: match[1]
    };
  },
  toBlock: function(obj) {
    return (`<div></div>`);
  },
  toPreview: function(obj) {
    return (`<div></div>`);
  }
});

// 3-up Module
CMS.registerEditorComponent({
  id: "three_up",
  label: "Three-Up Images",
  fields: [{name: 'image-one', label: 'First Image - Portrait', widget: 'object', fields: [
    {name: 'image', label: 'Image', widget: 'image'},
    {name: 'alt', label: 'Alt text', widget: 'string'}
  ]}, {name: 'image-two', label: 'Second Image', widget: 'object', fields: [
    {name: 'image', label: 'Image', widget: 'image'},
    {name: 'alt', label: 'Alt text', widget: 'string'}
  ]}, {name: 'image-three', label: 'Third Image', widget: 'object', fields: [
    {name: 'image', label: 'Image', widget: 'image'},
    {name: 'alt', label: 'Alt text', widget: 'string'}
  ]}],
  pattern: /three_up (\S+)\s/,
  fromBlock: function(match) {
    return {
      id: match[1]
    };
  },
  toBlock: function(obj) {
    return (`<div></div>`);
  },
  toPreview: function(obj) {
    return (`<div></div>`);
  }
});

// 5-up Module
CMS.registerEditorComponent({
  id: "five_up",
  label: "Five-Up Images",
  fields: [{name: 'image-one', label: 'First Image - Horizontal', widget: 'object', fields: [
    {name: 'image', label: 'Image', widget: 'image'},
    {name: 'alt', label: 'Alt text', widget: 'string'}
  ]}, {name: 'image-two', label: 'Second Image - Portrait', widget: 'object', fields: [
    {name: 'image', label: 'Image', widget: 'image'},
    {name: 'alt', label: 'Alt text', widget: 'string'}
  ]}, {name: 'image-three', label: 'Third Image - Square', widget: 'object', fields: [
    {name: 'image', label: 'Image', widget: 'image'},
    {name: 'alt', label: 'Alt text', widget: 'string'}
  ]}, {name: 'image-four', label: 'Fourth Image - Horizontal', widget: 'object', fields: [
    {name: 'image', label: 'Image', widget: 'image'},
    {name: 'alt', label: 'Alt text', widget: 'string'}
  ]}, {name: 'image-five', label: 'Fifth Image - Portrait', widget: 'object', fields: [
    {name: 'image', label: 'Image', widget: 'image'},
    {name: 'alt', label: 'Alt text', widget: 'string'}
  ]}],
  pattern: /five_up (\S+)\s/,
  fromBlock: function(match) {
    return {
      id: match[1]
    };
  },
  toBlock: function(obj) {
    return (`<div></div>`);
  },
  toPreview: function(obj) {
    return (`<div></div>`);
  }
});

// Image Carousel Module
CMS.registerEditorComponent({
  id: "image_carousel",
  label: "Image Carousel",
  fields: [{name: 'imageCarousel', label: 'Image', widget: 'list', fields: [
    {name: 'image', label: 'Image', widget: 'image'},
    {name: 'alt', label: 'Alt text', widget: 'string'}
  ]}],
  pattern: /image_carousel (\S+)\s/,
  fromBlock: function(match) {
    return {
      id: match[1]
    };
  },
  toBlock: function(obj) {
    return (`<div></div>`);
  },
  toPreview: function(obj) {
    return (`<div></div>`);
  }
});

CMS.registerPreviewStyle("/css/main.css");
