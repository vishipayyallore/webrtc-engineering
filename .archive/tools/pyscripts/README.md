# Legacy Python utilities (archived)

These scripts were imported from the ML learning repo. They are **not** part of the WebRTC engineering stack.

**Primary stack for this repository:** Node.js, JavaScript, TypeScript.

## If you still need PDF/PPTX conversion

Install Python 3.12+ locally, then run scripts directly (no `uv` / repo virtualenv):

```powershell
python .archive/tools/pyscripts/pdf_to_md.py --input "source-material" --recursive --output-same-folder
python .archive/tools/pyscripts/pptx_to_md.py --input "source-material" --recursive --output-same-folder
```

See individual script headers for flags. Outputs from internal source material must stay colocated per `.cursor/rules/06_source_material_rules.mdc`.

## Do not

- Add these scripts back to CI
- Publish converted content without zero-copy synthesis into demo READMEs or `docs/`
