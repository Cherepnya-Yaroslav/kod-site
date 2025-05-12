import type { Schema, Struct } from '@strapi/strapi';

export interface ProgramsProgram extends Struct.ComponentSchema {
  collectionName: 'components_programs_programs';
  info: {
    description: 'Program details for personal parties';
    displayName: 'Program';
  };
  attributes: {
    description: Schema.Attribute.RichText & Schema.Attribute.Required;
    galleryImages: Schema.Attribute.Media<'images', true>;
    mainImage: Schema.Attribute.Media<'images'> & Schema.Attribute.Required;
    shortDescription: Schema.Attribute.Text &
      Schema.Attribute.Required &
      Schema.Attribute.SetMinMaxLength<{
        maxLength: 200;
      }>;
    slug: Schema.Attribute.String &
      Schema.Attribute.Required &
      Schema.Attribute.Unique;
    title: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface SharedFaqItem extends Struct.ComponentSchema {
  collectionName: 'components_shared_faq_items';
  info: {
    description: 'Question and answer pair for FAQ sections';
    displayName: 'FAQ Item';
  };
  attributes: {
    answer: Schema.Attribute.Text & Schema.Attribute.Required;
    question: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface SharedPageHeader extends Struct.ComponentSchema {
  collectionName: 'components_shared_page_headers';
  info: {
    description: 'Header section with title and description';
    displayName: 'Page Header';
  };
  attributes: {
    description: Schema.Attribute.Text & Schema.Attribute.Required;
    title: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface SharedTestimonial extends Struct.ComponentSchema {
  collectionName: 'components_shared_testimonials';
  info: {
    description: 'User testimonial with text and author';
    displayName: 'Testimonial';
  };
  attributes: {
    author: Schema.Attribute.String & Schema.Attribute.Required;
    text: Schema.Attribute.Text & Schema.Attribute.Required;
  };
}

declare module '@strapi/strapi' {
  export module Public {
    export interface ComponentSchemas {
      'programs.program': ProgramsProgram;
      'shared.faq-item': SharedFaqItem;
      'shared.page-header': SharedPageHeader;
      'shared.testimonial': SharedTestimonial;
    }
  }
}
