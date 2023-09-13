# pretalx.com legal documents

This repository contains legal documents concerning the hosted service at pretalx.com. Each document is placed in its
own subdirectory, where it is available in plain text and as a pdf file, both in English and German.

Publishing these documents in a git repository allows you to compare different versions, and see which change was
introduced at which date. This is especially useful for binding agreements like our Terms of Service.

Any questions? We're happy to help at [support@pretalx.com](mailto:support@pretalx.com).

## How to: Updates

Make sure you have a working pdflatex installation, and Open Sans (usually in something like ``texlive-fontsextra``).

- [ ] Update both `terms-of-service/terms-de.tex` and `terms-of-service/terms-en.tex`
- [ ] Increment the version number in both documents
- [ ] Adjust the publish date in both documents
- [ ] In `terms-of-service`, run `make`
- [ ] Commit, tag, push changes
- [ ] Copy the build artifacts to `pretalx_com/static/pretalx_com/terms/` in the `pretalx-com` plugin.
- [ ] Commit, push, deploy changes
- [ ] If more than cosmetic changes: Notify customers, inform about rights re: changed conditions etc.
