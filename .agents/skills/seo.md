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

Distinguish between:

- **Search-engine requirements or documented behavior** — things a search engine explicitly requires or supports.
- **SEO best practices** — recommendations that generally improve clarity, crawlability, or user experience.
- **Project-specific choices** — implementation decisions that depend on the site's architecture, audience, or content.

Do not turn a guideline into a mandatory rule unless the evidence or project requirement supports doing so.

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

- title clarity, relevance, and concision
- meta description relevance and usefulness
- canonical URL
- robots directives
- Open Graph title/description/image
- Twitter/X card metadata where applicable
- social preview consistency

### Title guidance

Every indexable page should have an appropriate `<title>`. Titles should be descriptive, concise, distinct, and representative of the page.

Do **not** enforce a fixed character limit such as 60 characters as a hard SEO requirement. Search-result title links can be truncated based on available display space, and Google may generate or adjust title links from other page content.

Avoid:

- keyword stuffing
- vague titles such as only `Home` when more useful wording is available
- unnecessarily long titles
- repetitive boilerplate across unrelated pages

### Meta description guidance

Use a unique, relevant description where appropriate. Write it as a useful summary that can help users decide whether the result matches their intent.

Do **not** enforce a fixed character limit such as 160 characters as a hard SEO requirement. Search engines may truncate snippets and may choose page content instead of the supplied meta description.

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
- `X-Robots-Tag` headers where relevant

Do not block important assets or pages without understanding the indexing impact.

Remember that `robots.txt` controls crawling, not guaranteed indexing. If a URL must not be indexed, use an appropriate `noindex` mechanism where technically possible and ensure the crawler can access the directive.

## 5. XML sitemaps

Inspect whether an XML sitemap exists when the site would benefit from one.

Verify:

- canonical, indexable URLs are included
- URLs use the correct protocol and preferred host
- URLs return appropriate success responses
- important public pages are discoverable
- `<lastmod>` is present when it can be maintained accurately

Do not treat `<changefreq>` or `<priority>` as required SEO fields. Google ignores those values. Do not add them merely to improve Google rankings.

If a sitemap is generated automatically, inspect the framework/plugin configuration rather than adding a second competing sitemap mechanism.

## 6. Content structure

For content and page structure:

- use a clear primary page topic
- use semantic headings in a logical hierarchy
- write useful, human-readable content
- use descriptive links
- provide meaningful image alternative text
- maintain clear internal linking
- avoid hidden keyword text or deceptive content

A single clear primary heading is a useful design and accessibility convention for many pages, but do not treat the number of `<h1>` elements as an automatic search-engine penalty by itself. Evaluate the actual document structure, semantics, accessibility, and page intent.

Do not skip heading levels merely for visual styling; use CSS for presentation.

## 7. Images

Inspect:

- meaningful `alt` text for informative images
- empty `alt=""` for purely decorative images where appropriate
- modern image formats when supported
- intrinsic dimensions and responsive sizing
- `srcset` / `sizes` or framework image optimization where appropriate
- compression and file size
- lazy loading for suitable below-the-fold images

Do not force lazy loading onto critical above-the-fold images when it would hurt loading performance.

Do not use arbitrary hard limits such as "alt text must be under 125 characters" as a universal SEO rule. Alt text should be concise, accurate, contextual, and useful to people who cannot see the image.

## 8. Internal linking and URLs

Inspect:

- descriptive anchor text
- links between related content
- important pages reachable through normal navigation
- consistent URL patterns
- readable, stable slugs
- canonical relationships
- duplicate URL variants
- unnecessary query parameters

Avoid changing established URLs unnecessarily. When URLs must change, use an appropriate redirect strategy and verify the migration.

Do not treat an arbitrary rule such as "every page must be within three clicks" as a universal search-engine requirement. Use site architecture, navigation, content relationships, and crawlability to determine whether important pages are adequately discoverable.

## 9. Structured data

Use structured data only when the page genuinely qualifies for the schema type.

Before adding JSON-LD:

- verify the schema type fits the content
- use accurate values
- avoid fabricated reviews, ratings, prices, availability, or organization details
- avoid adding markup solely because it might generate a rich result
- keep structured data synchronized with visible page content

Possible types may include `WebSite`, `Organization`, `LocalBusiness`, `Service`, `BreadcrumbList`, or other supported types when appropriate. Do not add `FAQPage`, `HowTo`, or other schema simply because the type exists; eligibility and current search-feature support must be checked.

Validate structured data when practical using the appropriate current validator or search-engine testing tool.

## 10. Performance and Core Web Vitals

SEO work should consider page performance because slow pages can harm user experience and search performance.

Inspect when relevant:

- image size and format
- image dimensions and loading behavior
- JavaScript bundles
- unnecessary client-side work
- font loading
- render-blocking resources
- caching
- server response time
- Core Web Vitals

Current Core Web Vitals are:

- **LCP (Largest Contentful Paint):** good at 2.5 seconds or less
- **INP (Interaction to Next Paint):** good at 200 milliseconds or less
- **CLS (Cumulative Layout Shift):** good at 0.1 or less

FID (First Input Delay) is no longer a Core Web Vital; INP replaced it.

Do not claim a site passes Core Web Vitals from a code inspection alone. Use appropriate field or lab measurements and state which type of measurement was performed.

Do not introduce SEO changes that unnecessarily make pages slower.

## 11. JavaScript frameworks

For Next.js, React, Vue, Nuxt, and similar frameworks:

- inspect the framework's current metadata/head APIs before adding custom solutions
- determine whether pages are server-rendered, statically generated, or client-rendered
- ensure important SEO content is available to crawlers where required
- avoid generating critical metadata only after client-side hydration when the framework provides a better server-side mechanism
- preserve existing routing and rendering conventions

Use the framework's built-in SEO facilities when they are already present and appropriate instead of adding duplicate libraries.

## 12. Open Graph and Twitter/X metadata

When social sharing matters, inspect relevant metadata such as:

- `og:title`
- `og:description`
- `og:image`
- `og:url`
- `og:type`
- `twitter:card`
- `twitter:title`
- `twitter:description`
- `twitter:image`

Prefer `summary` or `summary_large_image` Twitter/X card types where applicable. Do not assume a specific card type is required for every site.

Social metadata improves sharing previews but should not be confused with search-engine ranking requirements.

## 13. Local SEO

For businesses serving a specific location, review when applicable:

- accurate business name
- address
- phone number
- opening hours
- location pages
- local business structured data
- consistent contact information
- useful location-specific content
- relevant business profile/verification systems

Never fabricate business details, locations, reviews, or service areas.

## 14. International SEO

When multiple languages or regions exist, consider:

- language-specific URLs
- `hreflang`
- canonical relationships
- translated metadata
- duplicate translated content
- language selectors and crawlable links

Do not add international SEO infrastructure when the project does not actually serve multiple languages or regions.

## 15. Verification

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
- use Search Console or equivalent webmaster tooling when production/indexing verification is required

Separate **implementation verification** from **search-engine outcome verification**. A successful build, valid HTML, or passing local test does not prove that a search engine has indexed the page or that rankings improved.

## 16. Reporting

SEO work should report:

### IMPLEMENTED

What technical or content changes were made.

### VERIFIED

What was actually inspected or tested, including whether tests were local, automated, lab-based, field-based, or production-based where relevant.

### UNVERIFIED

What requires external crawler, Search Console, analytics, production, or time-based verification.

### SEO RISKS

Potential indexing, duplication, performance, structured-data, migration, or content risks.

Never claim improved rankings, indexing, traffic, or search performance unless that outcome was actually measured.

## 17. SEO anti-patterns

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
- unnecessary URL changes that can cause avoidable loss of established search visibility

Prefer useful content, technically accessible pages, accurate metadata, strong information architecture, and honest structured data.

## 18. Source-of-truth guidance

When SEO guidance depends on a search engine's current behavior, prefer current first-party documentation over fixed assumptions or old SEO folklore.

Useful primary references include:

- Google Search Central: title links and metadata
- Google Search Central: meta descriptions and snippets
- Google Search Central: sitemaps
- Google Search Central: Core Web Vitals / page experience
- Current schema.org documentation for schema definitions

If a recommendation is time-sensitive or platform-specific, verify the current documentation before treating it as a hard requirement.
