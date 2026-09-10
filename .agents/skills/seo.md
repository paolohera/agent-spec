# SEO Development Skill

Use this skill when building, modifying, auditing, or troubleshooting a website where search-engine visibility, crawlability, discoverability, or search performance matters.

SEO work must support the user's actual product and content goals. Do not add deceptive, spammy, or misleading search-engine tactics.

## 1. Understand the SEO requirement

Determine what the user is trying to improve:

- indexing
- crawlability
- rankings
- organic traffic
- local search visibility
- branded search visibility
- page discoverability
- click-through rate
- content structure
- technical SEO
- Core Web Vitals / performance
- structured data
- social sharing previews

Define measurable acceptance criteria where possible.

## 2. Inspect before modifying

Before changing SEO-related code, inspect:

- framework and routing system
- existing metadata implementation
- `<title>` and meta description handling
- canonical URL handling
- robots configuration
- sitemap generation
- `robots.txt`
- structured data / JSON-LD
- Open Graph metadata
- Twitter/X card metadata where applicable
- heading structure
- internal linking
- image `alt` attributes
- URL structure
- redirects and status codes
- server-side rendering / static generation / client rendering behavior
- loading performance
- existing analytics or Search Console integrations when present
- localization and `hreflang` when applicable

Do not assume a page is indexable merely because it renders in a browser.

## 3. Metadata

Use unique, accurate metadata for indexable pages where appropriate.

Review:

- title length and clarity
- meta description relevance
- canonical URL
- robots directives
- Open Graph title/description/image
- social preview consistency

Avoid keyword stuffing and duplicate metadata.

Metadata should describe the actual page rather than attempting to manipulate rankings.

## 4. Crawlability and indexing

Check:

- `robots.txt`
- XML sitemap(s)
- canonical URLs
- HTTP status codes
- redirects
- accidental `noindex`
- blocked resources
- duplicate URL variants
- trailing-slash or case inconsistencies
- client-only content that search engines may not reliably receive

Do not block important assets or pages without understanding the indexing impact.

## 5. Content structure

For content and page structure:

- use one clear primary page topic
- use semantic headings in a logical hierarchy
- write useful, human-readable content
- use descriptive links
- provide meaningful image alternative text
- maintain clear internal linking
- avoid hidden keyword text or deceptive content

SEO recommendations should improve user experience as well as search discoverability.

## 6. Structured data

Use structured data only when the page genuinely qualifies for the schema type.

Before adding JSON-LD:

- verify the schema type fits the content
- use accurate values
- avoid fabricated reviews, ratings, prices, availability, or organization details
- avoid adding markup solely because it might generate a rich result
- keep structured data synchronized with visible page content

Validate structured data when practical.

## 7. Performance

SEO work should consider page performance because slow pages can harm user experience and search performance.

Inspect when relevant:

- image size and format
- image dimensions and lazy loading
- JavaScript bundles
- unnecessary client-side work
- font loading
- render-blocking resources
- caching
- server response time
- Core Web Vitals

Do not introduce SEO changes that unnecessarily make pages slower.

## 8. JavaScript frameworks

For Next.js, React, Vue, Nuxt, and similar frameworks:

- inspect the framework's metadata/head APIs before adding custom solutions
- determine whether pages are server-rendered, statically generated, or client-rendered
- ensure important SEO content is available to crawlers where required
- avoid generating critical metadata only after client-side hydration when the framework provides a better server-side mechanism
- preserve existing routing and rendering conventions

## 9. Local SEO

For businesses serving a specific location, review when applicable:

- accurate business name
- address
- phone number
- opening hours
- location pages
- local business structured data
- consistent contact information
- useful location-specific content

Never fabricate business details.

## 10. International SEO

When multiple languages or regions exist, consider:

- language-specific URLs
- `hreflang`
- canonical relationships
- translated metadata
- duplicate translated content
- language selectors and crawlable links

Do not add international SEO infrastructure when the project does not actually serve multiple languages or regions.

## 11. Verification

Verify SEO changes at the appropriate level.

Possible checks include:

- inspect rendered HTML
- inspect response headers/status codes
- verify title and meta tags
- verify canonical tags
- verify robots directives
- inspect generated sitemap
- inspect `robots.txt`
- validate JSON-LD syntax/schema
- test responsive rendering
- run performance audits when appropriate
- check internal links
- verify that important content is present without relying on unavailable client-side state

A successful build does not prove that search engines can crawl, index, or understand the page.

## 12. Reporting

SEO work should report:

### IMPLEMENTED

What technical or content changes were made.

### VERIFIED

What was actually inspected or tested.

### UNVERIFIED

What requires external crawler, Search Console, analytics, or production verification.

### SEO RISKS

Potential indexing, duplication, performance, structured-data, or content risks.

Never claim improved rankings, indexing, traffic, or search performance unless that outcome was actually measured.

## 13. SEO anti-patterns

Do not implement:

- keyword stuffing
- hidden text intended to manipulate rankings
- doorway pages
- deceptive redirects
- cloaking
- fabricated reviews or ratings
- fake business information
- misleading structured data
- mass-generated low-value pages solely for search traffic
- copied content presented as original
- manipulative internal-link spam

Prefer useful content, technically accessible pages, accurate metadata, strong information architecture, and honest structured data.
