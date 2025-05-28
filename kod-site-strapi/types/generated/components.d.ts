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

export interface SharedDanceTypes extends Struct.ComponentSchema {
  collectionName: 'components_shared_dance_types';
  info: {
    displayName: 'danceTypes';
  };
  attributes: {
    CoverImage: Schema.Attribute.Media<
      'images' | 'files' | 'videos' | 'audios'
    >;
    description: Schema.Attribute.Text;
    title: Schema.Attribute.String;
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

export interface SharedFishki extends Struct.ComponentSchema {
  collectionName: 'components_shared_fishkis';
  info: {
    displayName: 'fishki';
  };
  attributes: {
    Description: Schema.Attribute.Text;
    Title: Schema.Attribute.String;
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

export interface SharedPoints extends Struct.ComponentSchema {
  collectionName: 'components_shared_points';
  info: {
    displayName: 'points';
  };
  attributes: {
    point: Schema.Attribute.String;
  };
}

export interface SharedPrices extends Struct.ComponentSchema {
  collectionName: 'components_shared_prices';
  info: {
    description: '';
    displayName: 'prices';
  };
  attributes: {
    points: Schema.Attribute.Component<'shared.points', true>;
    price: Schema.Attribute.Integer;
    shortDescription: Schema.Attribute.String;
    title: Schema.Attribute.String;
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

export interface SharedTrainers extends Struct.ComponentSchema {
  collectionName: 'components_shared_trainers';
  info: {
    displayName: 'trainers';
  };
  attributes: {
    description: Schema.Attribute.String;
    mainImage: Schema.Attribute.Media<
      'images' | 'files' | 'videos' | 'audios',
      true
    >;
    name: Schema.Attribute.String;
  };
}

declare module '@strapi/strapi' {
  export module Public {
    export interface ComponentSchemas {
      'programs.program': ProgramsProgram;
      'shared.dance-types': SharedDanceTypes;
      'shared.faq-item': SharedFaqItem;
      'shared.fishki': SharedFishki;
      'shared.page-header': SharedPageHeader;
      'shared.points': SharedPoints;
      'shared.prices': SharedPrices;
      'shared.testimonial': SharedTestimonial;
      'shared.trainers': SharedTrainers;
    }
  }
}
