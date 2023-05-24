{{ include article_header }}
{{ include alpha_jump_nav }}
<div class="has-background--white">
  <div class="wrapper wrapper--96">
    <div class="grid--fluid">
      <div class="row">
        <div class="col-xs-12 col-xs-offset-0 col-md-6 col-md-offset-3">
          {{ each glossary_pages as item sort by sort_title }}
          {{ $itemId = {item.sort_title.substr(0, 1)} }}
          {{ if {$itemId} == "1" }}
            {{ $itemId = Number }}
          {{ end-if }}
          <div class="vr__2x">
            <div class="vr" id="{{ item.sort_title }}">
              <a
                href="{{ item.zuid.truepath() }}"
                class="text-subhead text-subhead--2 text__link"
                style="position:relative;;"
                ><div id="{{ $itemId }}" tabindex="-1"></div>
                {{ item.sort_title }}</a
              >
            </div>
            <p class="text-article">{{ item.sub_text }}</p>
          </div>
          {{ end-each }}
        </div>
      </div>
    </div>
  </div>
</div>
{{ include interior_start_saving }}