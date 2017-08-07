import CMS from "netlify-cms";

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

CMS.registerPreviewStyle("/css/main.css");
